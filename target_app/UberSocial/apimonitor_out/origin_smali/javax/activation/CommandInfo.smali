.class public Ljavax/activation/CommandInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private className:Ljava/lang/String;

.field private verb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/activation/CommandInfo;->verb:Ljava/lang/String;

    iput-object p2, p0, Ljavax/activation/CommandInfo;->className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommandClass()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljavax/activation/CommandInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getCommandName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljavax/activation/CommandInfo;->verb:Ljava/lang/String;

    return-object v0
.end method

.method public getCommandObject(Ljavax/activation/DataHandler;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Ljavax/activation/CommandInfo;->className:Ljava/lang/String;

    invoke-static {p2, v0}, Ljava/beans/Beans;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_14

    instance-of v0, v1, Ljavax/activation/CommandObject;

    if-eqz v0, :cond_15

    move-object v0, v1

    check-cast v0, Ljavax/activation/CommandObject;

    iget-object v2, p0, Ljavax/activation/CommandInfo;->verb:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Ljavax/activation/CommandObject;->setCommandContext(Ljava/lang/String;Ljavax/activation/DataHandler;)V

    :cond_14
    :goto_14
    return-object v1

    :cond_15
    instance-of v0, v1, Ljava/io/Externalizable;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_14

    move-object v0, v1

    check-cast v0, Ljava/io/Externalizable;

    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v3}, Ljava/io/Externalizable;->readExternal(Ljava/io/ObjectInput;)V

    goto :goto_14
.end method
