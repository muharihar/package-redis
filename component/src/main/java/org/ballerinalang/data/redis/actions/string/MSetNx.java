/*
 * Copyright (c) 2018, WSO2 Inc. (http:www.wso2.org) All Rights Reserved.
 *
 * WSO2 Inc. licenses this file to you under the Apache License,
 * Version 2.0 (the "License"); you may not use this file except
 * in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http:www.apache.orglicensesLICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

package org.ballerinalang.data.redis.actions.string;

import org.ballerinalang.bre.Context;
import org.ballerinalang.data.redis.Constants;
import org.ballerinalang.data.redis.RedisDataSource;
import org.ballerinalang.data.redis.actions.AbstractRedisAction;
import org.ballerinalang.model.types.TypeKind;
import org.ballerinalang.model.values.BBoolean;
import org.ballerinalang.model.values.BMap;
import org.ballerinalang.model.values.BString;
import org.ballerinalang.model.values.BStruct;
import org.ballerinalang.natives.annotations.BallerinaFunction;
import org.ballerinalang.natives.annotations.Receiver;

/**
 * {@code mSetnx} Maps with "MSETNX" operation of Redis.
 *
 * @since 0.5.0
 */
@BallerinaFunction(orgName = "ballerina",
                   packageName = "data.redis",
                   functionName = "mSetNx",
                   receiver = @Receiver(type = TypeKind.STRUCT,
                                        structType = "ClientConnector"))
public class MSetNx extends AbstractRedisAction {

    @Override
    public void execute(Context context) {
        BStruct bConnector = (BStruct) context.getRefArgument(0);
        RedisDataSource redisDataSource = (RedisDataSource) bConnector.getNativeData(Constants.CLIENT_CONNECTOR);

        BMap<String, BString> bMap = (BMap<String, BString>) context.getRefArgument(1);
        BBoolean result = mSetnx(createMapFromBMap(bMap), redisDataSource);
        context.setReturnValues(result);
    }
}