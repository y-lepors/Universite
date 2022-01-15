import React, {Component} from "react";
import Header from "../Composants/Header";
import AjoutFormation from "../Composants/AjoutFormation";
import "../Styles/Page.css";
import ListeFormation from "./ListeFormation";
import Button from 'react-bootstrap/Button';
import Form from 'react-bootstrap/Form'
import ChartsPage from "./ChartsPage";

class Page extends Component {


    constructor(props) {
        super(props);
        this.state = {
            popup : false,
            needRefresh : 0,
            formation : [],
            firstYear : 2016,
            lastYear : 2019,
           
            backgroundColor: [
                "rgba(255, 134,159,0.4)",
                //"rgba(98,  182, 239,0.4)",
                "rgba(255, 218, 128,0.4)",
                "rgba(113, 205, 205,0.4)",
                "rgba(170, 128, 252,0.4)",
                "rgba(255, 177, 101,0.4)",
                "rgba(247,70,74,0.7)",
                "rgba(220,120,220,0.8)"
                ],
                
                borderColor: [
                "rgba(255, 134, 159, 1)",
                //"rgba(98,  182, 239, 1)",
                "rgba(255, 218, 128, 1)",
                "rgba(113, 205, 205, 1)",
                "rgba(170, 128, 252, 1)",
                "rgba(255, 177, 101, 1)",
                "rgba(247,70,74,1)",
                "rgba(220,120,220,1)"

                ],
              

            dataBar: {
                  labels: ["2016", "2017", "2018", "2019"],
                  datasets: [
                    
                  ]
                }
            };

        this.masquePage = this.masquePage.bind(this);
        this.readFormation = this.readFormation.bind(this);
        
      
    };

    


    masquePage(){
        this.setState({
            popup : !this.state.popup
        })
    };

    addFormation = (id) => {
        let formations = this.state.formation.slice();
        let exist = false;
        formations.forEach(element => {
            if(element.result[0].idFormation == id){
                console.log("Error already exist");
                exist = true;
            }
        });

        

        if(!exist){
            fetch("http://localhost:7131/getFormation/"+id).then(res=> res.json())
            .then(
                (result) => {
                   
                    formations.push({result});
                    this.setState({formation : formations});
                },
                (error) => {
                    this.setState({
                        error
                    });
                }
            )
        }
    }

    readFormation = (isCheck, value) => {
        let databars = this.state.dataBar;
        
        
        if(isCheck == true){

            let tmp;
            for(let i = 0 ; i < this.state.formation.length ; i++){
                if(this.state.formation[i].result[0].idFormation == value){
                    tmp = this.state.formation[i];
                    break;
                }
            }

            let newData = {
                id : value,
                label: tmp.result[0].type +" "+ tmp.result[0].niveau + " " + tmp.result[0].nomParcours_Court,
                data: [tmp.result[0].effectif, tmp.result[1].effectif, tmp.result[2].effectif, tmp.result[3].effectif ],
                backgroundColor:  this.state.backgroundColor[this.state.needRefresh],
                borderColor: this.state.borderColor[this.state.needRefresh],
                borderWidth: 2,
                yAxisID : "yLeft"
            }

            databars.datasets.push(newData);

            let refresh = this.state.needRefresh;
            refresh++;

            this.setState({dataBar : databars,
                            needRefresh : refresh});
           
        } else {

            const index = databars.datasets.findIndex(id => id.id == value);
            databars.datasets.splice(index, 1);
            let refresh = this.state.needRefresh;
            refresh++;
            this.setState({dataBar : databars,
                            needRefresh : refresh});
          

    
        }
    }

    removeFormation = (id) => {
        let formations = this.state.formation.slice();
        const index = formations.findIndex(idFormation => idFormation.id == id);
        formations.splice(index, 1);
        this.setState({formation : formations});

        let databars = this.state.dataBar;
        const index2 = databars.datasets.findIndex(id => id.id == id);
        if(index2) {
            databars.datasets.splice(index2, 1);
            let refresh = this.state.needRefresh;
            refresh++;
            this.setState({dataBar : databars,
                            needRefresh : refresh});
        }
    }

    handleChangeFirst = (event) => {
        this.setState({firstYear : event.currentTarget.value});

        if(event.currentTarget.value > this.state.lastYear) {
            this.setState({lastYear : event.currentTarget.value});
            let compteur = event.currentTarget.value;
            let tab = [];
            while( compteur <= event.currentTarget.value){
                tab.push(compteur.toString());
                compteur++;
            }
            let databars = this.state.dataBar;
            
            databars.labels = tab;
            this.setState({dataBar : databars});

        } else {
            let compteur = event.currentTarget.value;
            let tab = [];
            while( compteur <= this.state.lastYear){
                tab.push(compteur.toString());
                compteur++;
            }
            let databars = this.state.dataBar;
            
            databars.labels = tab;
            this.setState({dataBar : databars});
        }    
    }

    handleChangeLast = (event) => {
         
        if(event.currentTarget.value >= this.state.firstYear){
            this.setState({lastYear : event.currentTarget.value});

            let compteur = this.state.firstYear;
            let tab = [];
            while( compteur <= event.currentTarget.value){
                tab.push(compteur.toString());
                compteur++;
            }
            let databars = this.state.dataBar;
            
            databars.labels = tab;
            this.setState({dataBar : databars});
        }
    }

    handleChangeOnCheckbox = (event) => {
        

        if(event.currentTarget.checked == true){

            fetch("http://localhost:7131/demographique").then(res=> res.json())
            .then(
                (result) => {
                    let databars = this.state.dataBar;
                    let newData = {
                        id : -2,
                        label: "Demographie",
                        data: [result[0].nbPersonnes, result[1].nbPersonnes, result[2].nbPersonnes, result[3].nbPersonnes ],
                        backgroundColor: ['rgba(53, 162, 235, 0.5)'],
                        borderWidth: 2,
                        borderColor: ['rgb(53, 162, 235)'],
                        yAxisID : "yRight"
                      }
                    
                    databars.datasets.push(newData);
                    let refresh = this.state.needRefresh;
                    refresh++;

                    this.setState({dataBar : databars});
                    
                },
                (error) => {
                    
                }
            )
        } else {
            let databars = this.state.dataBar;
                    const index = databars.datasets.findIndex(id => id.id == -2);
                    databars.datasets.splice(index, 1);
                    let refresh = this.state.needRefresh;
                    refresh++;
                    this.setState({dataBar : databars,
                                    needRefresh : refresh});
        }
    }

    render(){
        return (
            <div className="test">
                <Header/>

                <div className="container">

                    <div className="gauche">
                       
                        <ListeFormation listeFormations = {this.state.formation} removeFormation = {this.removeFormation} readFormation = {this.readFormation}/>

                    </div>
                    
                    
                    

                    <div className="droite" >
                        <h1 id="txt"> Année </h1>
                        <br/><br/><br/><br/>

                        <Form.Select onChange={this.handleChangeFirst} value={this.state.firstYear} id="selectLeft" aria-label="Default select example">
                            <option value="2016">2016</option>
                            <option value="2017">2017</option>
                            <option value="2018">2018</option>
                            <option value="2019">2019</option>
                        </Form.Select>



                        <Form.Select onChange={this.handleChangeLast} value={this.state.lastYear} id="selectRight" aria-label="Default select example">
                            <option value="2016">2016</option>
                            <option value="2017">2017</option>
                            <option value="2018">2018</option>
                            <option value="2019">2019</option>
                        </Form.Select>

                        <br/>
                        <br/>
                        <br/>

                        <ChartsPage dataBar={this.state.dataBar} needRefresh = {this.state.needRefresh} isRefresh = {this.isRefresh}/>
                        <Button id="addFormationButton" variant="outline-warning" onClick={() => this.masquePage()}>Ajouter une formation</Button>{' '}
                        <p><input onChange={this.handleChangeOnCheckbox} type="checkbox" /> Afficher les données démographique </p>
                        
                    </div>

                    
                </div>  

                {this.state.popup && <AjoutFormation trigger={this.state.popup} close={this.masquePage} listeFormations = {this.state.formation}  ajouterFormation={this.addFormation}>
                </AjoutFormation>}



                
            </div>
        )
    }
}





export default Page;