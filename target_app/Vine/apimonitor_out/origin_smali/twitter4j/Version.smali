.class public final Ltwitter4j/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field private static final TITLE:Ljava/lang/String; = "Twitter4J"

.field private static final VERSION:Ljava/lang/String; = "3.0.6-SNAPSHOT"


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "3.0.6-SNAPSHOT"

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Twitter4J 3.0.6-SNAPSHOT"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
