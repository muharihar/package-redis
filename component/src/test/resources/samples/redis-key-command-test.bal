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

import ballerina/data.redis;

const string REDIS_HOST = "localhost";

function testDel () returns (int) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    int result = conn -> del(["testDelKey1", "testDelKey2", "testDelKey3"]);
    _ = conn -> quit();
    return result;
}

function testExists () returns (int, int) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    int result = conn -> exists(["testExistsKey"]);
    int result2 = conn -> exists(["nonExistentKey"]);
    _ = conn -> quit();
    return (result, result2);
}

function testExpire () returns (boolean) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    boolean result = conn -> expire("testExpireKey", 3);
    _ = conn -> quit();
    return result;
}

function testKeys () returns (string[]) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    string[] result = conn -> keys("testKeysKey*");
    _ = conn -> quit();
    return result;
}

function testMove () returns (boolean) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    boolean result = conn -> move("testMoveKey", 1);
    _ = conn -> quit();
    return result;
}

function testPersist () returns (boolean) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    boolean result = conn -> persist("testPersistKey");
    _ = conn -> quit();
    return result;
}

function testPExpire () returns (boolean) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    boolean result = conn -> pExpire("testPExpireKey", 3000);
    _ = conn -> quit();
    return result;
}

function testPTtl () returns (int) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    int result = conn -> pTtl("testPTtlKey");
    _ = conn -> quit();
    return result;
}

function testRandomKey () returns (string) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    string result = conn -> randomKey();
    _ = conn -> quit();
    return result;
}

function testRename () returns (string) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    string result = conn -> rename("testRenameKey", "testRenameKey1");
    _ = conn -> quit();
    return result;
}

function testRenameNx () returns (boolean, boolean) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    boolean result = conn -> renameNx("testRenameNxKey", "testRenameNxKeyRenamed");
    boolean result2 = conn -> renameNx("testRenameNxKey1", "testRenameNxKeyExisting");
    _ = conn -> quit();
    return (result, result2);
}

function testSort () returns (string[]) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    string[] result = conn -> sort("testSortKey");
    _ = conn -> quit();
    return result;
}

function testTtl () returns (int) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    int result = conn -> pTtl("testTtlKey");
    _ = conn -> quit();
    return result;
}

function testType () returns (string) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    string result = conn -> redisType("testTypeKey");
    _ = conn -> quit();
    return result;
}
