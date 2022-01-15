import React, {Component} from "react";
import Form from 'react-bootstrap/Form'
class SelectUFR extends Component {
    constructor(props){
        super(props);

        this.state = {
            error : null,
            isLoaded : false,
            listeUFR : [],
        };

        this.handleChange = this.handleChange.bind(this);
    }


    componentDidMount() {
        fetch("http://localhost:7131/listeUFR")
        .then(res=> res.json())
        .then(
            (result) => {
                this.setState({
                    isLoaded : true,
                    listeUFR : result
                });
            },
            (error) => {
                this.setState({
                    isLoaded : true,
                    error
                });
            }
        )
    }

    handleChange = (event) => {

         this.props.onUFRChange(event.currentTarget.value);
         
    }

render(){
    const {error, isLoaded, listeUFR} = this.state;

    if(error) {
        return <div>Erreur : {error.message} </div>;
    } else if (!isLoaded) {
        return <div>Chargement...</div>
    } else {
        return (<div>
            <Form.Select value={this.props.idUFR} onChange={this.handleChange} >
                <option value="-1">--Choisir un UFR--</option>
                {listeUFR.map(ufr => (
                <option value={ufr.idUFR} key={ufr.nomUFR}>
                {ufr.nomUFR}
                </option>
            ))}
            </Form.Select>
            
            </div>
        )
    }
}
}

export default SelectUFR;