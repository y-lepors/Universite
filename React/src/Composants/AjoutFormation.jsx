import React, {Component} from "react";
import "../Styles/AjoutFormation.css";
import SelectDepartement from "./SelectDepartement";
import SelectUFR from "./SelectUFR";
import SelectParcours from "./SelectParcours";
import SelectFormation from "./SelectFormation";
import Button from 'react-bootstrap/Button';
import CloseButton from 'react-bootstrap/CloseButton'




class AjoutFormation extends Component{


    constructor(props) {
        super(props);
        this.state = {
            trigger : props.trigger,
            idUFR : -1,
            idDepartement : -1,
            idParcours : -1,
            idFormation : -1,
            close : props.close
        };

        this.selectUfrChange = this.selectUfrChange.bind(this);
        this.selectDepartementChange = this.selectDepartementChange.bind(this);
        this.selectParcoursChange = this.selectParcoursChange.bind(this);
        this.selectFormationChange = this.selectFormationChange.bind(this);
        
        this.handleSubmit = this.handleSubmit.bind(this);

        
        
    };

    selectUfrChange(value){
        this.setState({idUFR : value});

    }

    selectDepartementChange(value){
        this.setState({idDepartement : value})
    }
    
    selectParcoursChange(value){
        this.setState({idParcours : value})
    }

    selectFormationChange(value){
        this.setState({idFormation : value})
    }

    handleSubmit = (event) => {
            this.props.ajouterFormation(this.state.idFormation);
            this.props.close();
        
    }

    
    render(){
        return (this.state.trigger) ? (
            <div className="popup">
                <div className="popup-inner">
    
                    <div className = "popupTxt">
                        <h1 id="title">Sélection formation</h1>

                        <p>UFR</p>
    
                        <SelectUFR idUFR = {this.state.idUFR} onUFRChange={this.selectUfrChange}/>
    
                        <p>DEPARTEMENT</p>
    
                        <SelectDepartement idDepartement = {this.state.idDepartement} idUFR = {this.state.idUFR} onDepartementChange={this.selectDepartementChange}/>


                        <p>PARCOURS</p>

                        <SelectParcours idDepartement = {this.state.idDepartement} idParcours = {this.state.idParcours} onParcoursChange={this.selectParcoursChange}/>

                        <p>Formation</p>
                        <SelectFormation idParcours = {this.state.idParcours} idFormation = {this.state.idFormation} onFormationChange={this.selectFormationChange}/>



                        <br/>

                        <Button onClick={this.handleSubmit} className="addButton" variant="warning">Ajouter une formation</Button>
                        
                    </div>

                     <CloseButton className="close-btn" onClick={this.state.close} />
                        
                </div>
    
            </div>
        ) : "";
    }
    
}
export default AjoutFormation;