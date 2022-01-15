import CloseButton from "react-bootstrap/CloseButton"
import React, {Component} from "react";
import "../Styles/ListeFormation.css";
import ListGroup from "react-bootstrap/ListGroup"



class ListeFormation extends Component {


    constructor(props){
        super(props);

        this.state = {

        };
    }

    handleClick = (event) => {
        this.props.removeFormation(event.currentTarget.value);
    }

    handleChange = (event) => {
        this.props.readFormation(event.currentTarget.checked , event.currentTarget.value);
    }

    render(){
        return( 
        
        <div id="liste">
            <h1>Formation Choisie</h1> 

            <p >Nombre de formations : {this.props.listeFormations.length}</p>
                        
            <ListGroup>
            
            {this.props.listeFormations.map(listeFormations => (
                
                <ListGroup.Item value={listeFormations.result[0].idFormation} key= {listeFormations.result[0].idFormation}> <input value={listeFormations.result[0].idFormation} type ="checkbox" onChange={this.handleChange}/> {listeFormations.result[0].type +" "+ listeFormations.result[0].niveau +" "+ listeFormations.result[0].nomParcours}  <CloseButton onClick={this.handleClick}/> </ListGroup.Item>
            ))}
            </ListGroup>


           



        </div>
        );
    }
}

export default ListeFormation;