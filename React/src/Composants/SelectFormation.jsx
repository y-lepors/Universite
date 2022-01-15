import React, {Component} from "react";
import Form from 'react-bootstrap/Form'

class SelectFormation extends Component {
    constructor(props){
        super(props);

        this.state = {
            error : null,
            listeFormation : []
        };


    }

    componentDidMount() {
        fetch("http://localhost:7131/listeFormation")
        .then(res=> res.json())
        .then(
            (result) => {
                this.setState({
                    listeFormation : result
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

        this.props.onFormationChange(event.currentTarget.value);
        
   }

    render(){
        const {listeFormation} = this.state;
            return (<div>
                <Form.Select aria-label="Default select example" value={this.props.idFormation} onChange={this.handleChange}>
                    
                    <option value="-1">--Choisir une Formation--</option>

                    {listeFormation.filter((formation) => 
                    this.props.idParcours == -1 
                    || formation.PARCOURS_idParcours == this.props.idParcours
                    ).map((formation) => <option value={formation.idFormation} key={formation.idFormation}>
                    {formation.type + " "+ formation.niveau} </option> )}

                </Form.Select>


                
                </div>
            )
        }
}

export default SelectFormation;