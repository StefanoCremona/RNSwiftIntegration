import React, { Component } from 'react';
import { View, Text } from 'react-native';
import { NativeModules, TouchableOpacity, TextInput } from 'react-native';

const MyNativeBridge = NativeModules.RNBridge;  //Use the swift name file

class App extends Component {

    state = {
        favouriteTeamName: null
    }

    render() {
        return (
            <View
                style={{
                    flex: 1,
                    alignItems: 'center',
                    justifyContent: 'center'
                }}
            >
                <Text>{this.props.myBestFriendName}'s favourite football team:</Text>
                <TextInput
                    style={{ 
                        height: 40, 
                        borderColor: 'gray', 
                        borderWidth: 1,
                        margin: 20,
                        padding: 10
                    }}
                    onChangeText={(text) => this.setState({text})}
                    placeholder={'eg: AS ROMA'}
                    value={this.state.favouriteTeamName}
                />
                <View
                    style={{ 
                        flexDirection: 'row',
                        margin: 10
                    }}
                >
                    <TouchableOpacity
                        style={{ flex: 1, alignItems: 'center' }}
                        onPress={() => MyNativeBridge.dismissRNViewController()}
                    >
                        <Text style={{ color: 'red' }}>Go Back to Native</Text>
                    </TouchableOpacity>
                    <TouchableOpacity
                        style={{ flex: 1, alignItems: 'center' }}
                        onPress={() => MyNativeBridge.callToCheckOutSegue()}
                    >
                        <Text style={{ color: 'blue' }}>Go To the Checkout</Text>
                    </TouchableOpacity>
                </View>
            </View>
        );
    }
}

export default App;