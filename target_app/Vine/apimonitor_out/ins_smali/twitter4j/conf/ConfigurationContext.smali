.class public final Ltwitter4j/conf/ConfigurationContext;
.super Ljava/lang/Object;
.source "ConfigurationContext.java"
.field public static final CONFIGURATION_IMPL:Ljava/lang/String; = "twitter4j.configurationFactory"
.field public static final DEFAULT_CONFIGURATION_FACTORY:Ljava/lang/String; = "twitter4j.conf.PropertyConfigurationFactory"
.field private static final factory:Ltwitter4j/conf/ConfigurationFactory;
.method static constructor <clinit>()V
.registers 7
:try_start_0
const-string v5, "twitter4j.configurationFactory"
const-string v6, "twitter4j.conf.PropertyConfigurationFactory"
invoke-static {v5, v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_7
.catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_7} :catch_15
move-result-object v0
:try_start_8
:goto_8
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v5
check-cast v5, Ltwitter4j/conf/ConfigurationFactory;
sput-object v5, Ltwitter4j/conf/ConfigurationContext;->factory:Ltwitter4j/conf/ConfigurationFactory;
:try_end_14
.catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_14} :catch_19
.catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_14} :catch_20
.catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_14} :catch_27
return-void
:catch_15
move-exception v4
const-string v0, "twitter4j.conf.PropertyConfigurationFactory"
goto :goto_8
:catch_19
move-exception v1
new-instance v5, Ljava/lang/AssertionError;
invoke-direct {v5, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v5
:catch_20
move-exception v3
new-instance v5, Ljava/lang/AssertionError;
invoke-direct {v5, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v5
:catch_27
move-exception v2
new-instance v5, Ljava/lang/AssertionError;
invoke-direct {v5, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v5
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getInstance()Ltwitter4j/conf/Configuration;
.registers 1
sget-object v0, Ltwitter4j/conf/ConfigurationContext;->factory:Ltwitter4j/conf/ConfigurationFactory;
invoke-interface {v0}, Ltwitter4j/conf/ConfigurationFactory;->getInstance()Ltwitter4j/conf/Configuration;
move-result-object v0
return-object v0
.end method
.method public static getInstance(Ljava/lang/String;)Ltwitter4j/conf/Configuration;
.registers 2
sget-object v0, Ltwitter4j/conf/ConfigurationContext;->factory:Ltwitter4j/conf/ConfigurationFactory;
invoke-interface {v0, p0}, Ltwitter4j/conf/ConfigurationFactory;->getInstance(Ljava/lang/String;)Ltwitter4j/conf/Configuration;
move-result-object v0
return-object v0
.end method