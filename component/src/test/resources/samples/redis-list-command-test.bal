// Copyright (c) 2018 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/redis;

@final string REDIS_HOST = "localhost";

function testBLPop () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> bLPop(1, ["testBLPopKey"]);
    _ = conn -> quit();
    return result;
}

function testBRPop () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> bRPop(1, ["testBRPopKey"]);
    _ = conn -> quit();
    return result;
}

function testLIndex () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> lIndex("testLIndexKey", 0);
    _ = conn -> quit();
    return result;
}

function testLInsert () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> lInsert("testLInsertKey", true, "pivotValue", "beforePivotValue");
    _ = conn -> quit();
    return result;
}

function testLLen () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> lLen("testLLenKey");
    _ = conn -> quit();
    return result;
}

function testLPop () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> lPop("testLPopKey");
    _ = conn -> quit();
    return result;
}

function testLPush () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> lPush("testLPushKey", ["testLPushValue2", "testLPushValue3"]);
    _ = conn -> quit();
    return result;
}

function testLPushX () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> lPushX("testLPushXKey", ["testLPushXValue2", "testLPushXValue3"]);
    _ = conn -> quit();
    return result;
}

function testLRange () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> lRange("testLRangeKey", 1, 3);
    _ = conn -> quit();
    return result;
}

function testLRem () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> lRem("testLRemKey", 0, "toBeRemovedValue");
    _ = conn -> quit();
    return result;
}

function testLSet () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> lSet("testLSetKey", 1, "testLSetValue2New");
    _ = conn -> quit();
    return result;

}

function testLTrim () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> lTrim("testLTrimKey", 1, -1);
    _ = conn -> quit();
    return result;
}

function testRPop () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> rPop("testRPopKey");
    _ = conn -> quit();
    return result;
}

function testRPopLPush () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> rPopLPush("testRPopLPushKey1", "testRPopLPushKey2");
    _ = conn -> quit();
    return result;
}

function testRPush () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> rPush("testRPushKey", ["testRPushValue2", "testRPushValue3"]);
    _ = conn -> quit();
    return result;
}

function testRPushX () returns (any) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    var result = conn -> rPushX("testRPushXKey", ["testRPushXValue2", "testRPushXValue3"]);
    _ = conn -> quit();
    return result;

}
