.class public Lcom/googlecode/javacpp/Parser$Info;
.super Ljava/lang/Object;
.source "Parser.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacpp/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field annotations:[Ljava/lang/String;

.field cast:Z

.field complex:Z

.field cppNames:[Ljava/lang/String;

.field define:Z

.field forwardDeclared:Z

.field genericTypes:[Ljava/lang/String;

.field javaNames:[Ljava/lang/String;

.field pointerTypes:[Ljava/lang/String;

.field primitiveTypes:[Ljava/lang/String;

.field textAfter:Ljava/lang/String;

.field textBefore:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Info;->cppNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Info;->javaNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Info;->annotations:[Ljava/lang/String;

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Info;->primitiveTypes:[Ljava/lang/String;

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Info;->pointerTypes:[Ljava/lang/String;

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Info;->genericTypes:[Ljava/lang/String;

    iput-boolean v1, p0, Lcom/googlecode/javacpp/Parser$Info;->cast:Z

    iput-boolean v1, p0, Lcom/googlecode/javacpp/Parser$Info;->define:Z

    iput-boolean v1, p0, Lcom/googlecode/javacpp/Parser$Info;->complex:Z

    iput-boolean v1, p0, Lcom/googlecode/javacpp/Parser$Info;->forwardDeclared:Z

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Info;->textBefore:Ljava/lang/String;

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Info;->textAfter:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Info;->cppNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Info;->javaNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Info;->annotations:[Ljava/lang/String;

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Info;->primitiveTypes:[Ljava/lang/String;

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Info;->pointerTypes:[Ljava/lang/String;

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Info;->genericTypes:[Ljava/lang/String;

    iput-boolean v1, p0, Lcom/googlecode/javacpp/Parser$Info;->cast:Z

    iput-boolean v1, p0, Lcom/googlecode/javacpp/Parser$Info;->define:Z

    iput-boolean v1, p0, Lcom/googlecode/javacpp/Parser$Info;->complex:Z

    iput-boolean v1, p0, Lcom/googlecode/javacpp/Parser$Info;->forwardDeclared:Z

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Info;->textBefore:Ljava/lang/String;

    iput-object v0, p0, Lcom/googlecode/javacpp/Parser$Info;->textAfter:Ljava/lang/String;

    iput-object p1, p0, Lcom/googlecode/javacpp/Parser$Info;->cppNames:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs annotations([Ljava/lang/String;)Lcom/googlecode/javacpp/Parser$Info;
    .registers 2

    iput-object p1, p0, Lcom/googlecode/javacpp/Parser$Info;->annotations:[Ljava/lang/String;

    return-object p0
.end method

.method public cast(Z)Lcom/googlecode/javacpp/Parser$Info;
    .registers 2

    iput-boolean p1, p0, Lcom/googlecode/javacpp/Parser$Info;->cast:Z

    return-object p0
.end method

.method public clone()Lcom/googlecode/javacpp/Parser$Info;
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Lcom/googlecode/javacpp/Parser$Info;

    invoke-direct {v0}, Lcom/googlecode/javacpp/Parser$Info;-><init>()V

    iget-object v1, p0, Lcom/googlecode/javacpp/Parser$Info;->cppNames:[Ljava/lang/String;

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/googlecode/javacpp/Parser$Info;->cppNames:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :goto_12
    iput-object v1, v0, Lcom/googlecode/javacpp/Parser$Info;->cppNames:[Ljava/lang/String;

    iget-object v1, p0, Lcom/googlecode/javacpp/Parser$Info;->javaNames:[Ljava/lang/String;

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/googlecode/javacpp/Parser$Info;->javaNames:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :goto_20
    iput-object v1, v0, Lcom/googlecode/javacpp/Parser$Info;->javaNames:[Ljava/lang/String;

    iget-object v1, p0, Lcom/googlecode/javacpp/Parser$Info;->annotations:[Ljava/lang/String;

    if-eqz v1, :cond_73

    iget-object v1, p0, Lcom/googlecode/javacpp/Parser$Info;->annotations:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :goto_2e
    iput-object v1, v0, Lcom/googlecode/javacpp/Parser$Info;->annotations:[Ljava/lang/String;

    iget-object v1, p0, Lcom/googlecode/javacpp/Parser$Info;->primitiveTypes:[Ljava/lang/String;

    if-eqz v1, :cond_75

    iget-object v1, p0, Lcom/googlecode/javacpp/Parser$Info;->primitiveTypes:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :goto_3c
    iput-object v1, v0, Lcom/googlecode/javacpp/Parser$Info;->primitiveTypes:[Ljava/lang/String;

    iget-object v1, p0, Lcom/googlecode/javacpp/Parser$Info;->pointerTypes:[Ljava/lang/String;

    if-eqz v1, :cond_77

    iget-object v1, p0, Lcom/googlecode/javacpp/Parser$Info;->pointerTypes:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :goto_4a
    iput-object v1, v0, Lcom/googlecode/javacpp/Parser$Info;->pointerTypes:[Ljava/lang/String;

    iget-object v1, p0, Lcom/googlecode/javacpp/Parser$Info;->genericTypes:[Ljava/lang/String;

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/googlecode/javacpp/Parser$Info;->genericTypes:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :goto_58
    iput-object v1, v0, Lcom/googlecode/javacpp/Parser$Info;->genericTypes:[Ljava/lang/String;

    iget-boolean v1, p0, Lcom/googlecode/javacpp/Parser$Info;->cast:Z

    iput-boolean v1, v0, Lcom/googlecode/javacpp/Parser$Info;->cast:Z

    iget-boolean v1, p0, Lcom/googlecode/javacpp/Parser$Info;->define:Z

    iput-boolean v1, v0, Lcom/googlecode/javacpp/Parser$Info;->define:Z

    iget-boolean v1, p0, Lcom/googlecode/javacpp/Parser$Info;->forwardDeclared:Z

    iput-boolean v1, v0, Lcom/googlecode/javacpp/Parser$Info;->forwardDeclared:Z

    iget-object v1, p0, Lcom/googlecode/javacpp/Parser$Info;->textBefore:Ljava/lang/String;

    iput-object v1, v0, Lcom/googlecode/javacpp/Parser$Info;->textBefore:Ljava/lang/String;

    iget-object v1, p0, Lcom/googlecode/javacpp/Parser$Info;->textAfter:Ljava/lang/String;

    iput-object v1, v0, Lcom/googlecode/javacpp/Parser$Info;->textAfter:Ljava/lang/String;

    return-object v0

    :cond_6f
    move-object v1, v2

    goto :goto_12

    :cond_71
    move-object v1, v2

    goto :goto_20

    :cond_73
    move-object v1, v2

    goto :goto_2e

    :cond_75
    move-object v1, v2

    goto :goto_3c

    :cond_77
    move-object v1, v2

    goto :goto_4a

    :cond_79
    move-object v1, v2

    goto :goto_58
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/googlecode/javacpp/Parser$Info;->clone()Lcom/googlecode/javacpp/Parser$Info;

    move-result-object v0

    return-object v0
.end method

.method public complex(Z)Lcom/googlecode/javacpp/Parser$Info;
    .registers 2

    iput-boolean p1, p0, Lcom/googlecode/javacpp/Parser$Info;->complex:Z

    return-object p0
.end method

.method public varargs cppNames([Ljava/lang/String;)Lcom/googlecode/javacpp/Parser$Info;
    .registers 2

    iput-object p1, p0, Lcom/googlecode/javacpp/Parser$Info;->cppNames:[Ljava/lang/String;

    return-object p0
.end method

.method public define(Z)Lcom/googlecode/javacpp/Parser$Info;
    .registers 2

    iput-boolean p1, p0, Lcom/googlecode/javacpp/Parser$Info;->define:Z

    return-object p0
.end method

.method public forwardDeclared(Z)Lcom/googlecode/javacpp/Parser$Info;
    .registers 2

    iput-boolean p1, p0, Lcom/googlecode/javacpp/Parser$Info;->forwardDeclared:Z

    return-object p0
.end method

.method public varargs genericTypes([Ljava/lang/String;)Lcom/googlecode/javacpp/Parser$Info;
    .registers 2

    iput-object p1, p0, Lcom/googlecode/javacpp/Parser$Info;->genericTypes:[Ljava/lang/String;

    return-object p0
.end method

.method public varargs javaNames([Ljava/lang/String;)Lcom/googlecode/javacpp/Parser$Info;
    .registers 2

    iput-object p1, p0, Lcom/googlecode/javacpp/Parser$Info;->javaNames:[Ljava/lang/String;

    return-object p0
.end method

.method public varargs pointerTypes([Ljava/lang/String;)Lcom/googlecode/javacpp/Parser$Info;
    .registers 2

    iput-object p1, p0, Lcom/googlecode/javacpp/Parser$Info;->pointerTypes:[Ljava/lang/String;

    return-object p0
.end method

.method public varargs primitiveTypes([Ljava/lang/String;)Lcom/googlecode/javacpp/Parser$Info;
    .registers 2

    iput-object p1, p0, Lcom/googlecode/javacpp/Parser$Info;->primitiveTypes:[Ljava/lang/String;

    return-object p0
.end method

.method public textAfter(Ljava/lang/String;)Lcom/googlecode/javacpp/Parser$Info;
    .registers 2

    iput-object p1, p0, Lcom/googlecode/javacpp/Parser$Info;->textAfter:Ljava/lang/String;

    return-object p0
.end method

.method public textBefore(Ljava/lang/String;)Lcom/googlecode/javacpp/Parser$Info;
    .registers 2

    iput-object p1, p0, Lcom/googlecode/javacpp/Parser$Info;->textBefore:Ljava/lang/String;

    return-object p0
.end method
