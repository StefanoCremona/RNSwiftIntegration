import React, { Component } from 'react';
import { View, Text } from 'react-native';
import { NativeModules, TouchableOpacity } from 'react-native';

const MyNativeBridge = NativeModules.RNBridge;  //Use the swift name file

class App extends Component {

    render() {
        return (
            <View
                style={{
                    flex: 1,
                    alignItems: 'center',
                    justifyContent: 'center'
                }}
            >
            <Text>Hello {this.props.myBestFriendName}!</Text>
            <TouchableOpacity
                onPress={() => MyNativeBridge.dismissRNViewController()}
            >
                <Text style={{ color: 'red' }}>Go Back to Native</Text>
            </TouchableOpacity>
            <TouchableOpacity
                onPress={() => MyNativeBridge.callToCheckOutSegue()}
            >
                <Text style={{ color: 'blue' }}>Go To the Checkout</Text>
            </TouchableOpacity>
            </View>
        );
    }
}

export default App;