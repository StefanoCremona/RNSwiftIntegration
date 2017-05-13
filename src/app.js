import React, { Component } from 'react';
import { View, Text } from 'react-native';

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
            <Text>Hello World!</Text>
            </View>
        );
    }
}

export default App;