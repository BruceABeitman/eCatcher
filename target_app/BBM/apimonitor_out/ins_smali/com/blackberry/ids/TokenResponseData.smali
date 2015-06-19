.class public Lcom/blackberry/ids/TokenResponseData;
.super Ljava/lang/Object;
.source "TokenResponseData.java"
.field public errorCode:I
.field public params:[Lcom/blackberry/ids/TokenParam;
.field public token:Ljava/lang/String;
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string v1, "TokenResponseData\n"
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
iput-object v2, p0, Lcom/blackberry/ids/TokenResponseData;->token:Ljava/lang/String;
iput-object v2, p0, Lcom/blackberry/ids/TokenResponseData;->params:[Lcom/blackberry/ids/TokenParam;
const/4 v0, 0x0
iput v0, p0, Lcom/blackberry/ids/TokenResponseData;->errorCode:I
return-void
.end method