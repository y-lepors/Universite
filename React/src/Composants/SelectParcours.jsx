import React, {Component} from "react";
import Form from 'react-bootstrap/Form'
class SelectParcours extends Component {
    constructor(props){
        super(props);

        this.state = {
            error : null,
            listeParcours : []
        };


    }


    componentDidMount() {
        fetch("http://localhost:7131/listeParcours")
        .then(res=> res.json())
        .then(
            (result) => {
                this.setState({
                    listeParcours : result
                });
            },
            (error) => {
                this.setState({
                    error
                });
            }
        )
    }

    handleChange = (event) => {
        this.props.onParcoursChange(event.currentTarget.value);
        console.log(event.currentTarget.value);
    }

    render(){
        const {listeParcours} = this.state;
            return (<div>
                <Form.Select value={this.props.idParcours} onChange={this.handleChange}>
                    
                    <option value="-1">--Choisir un Parcours--</option>

                    {listeParcours.filter((parcours) => 
                    this.props.idDepartement == -1 
                    || parcours.DEPARTEMENT_idDepartement == this.props.idDepartement
                    ).map((parcours) => <option value={parcours.idParcours} key={parcours.idParcours}>
                    {parcours.nomParcours} </option> )}

                </Form.Select>


                
                </div>
            )
        }
}

export default SelectParcours;