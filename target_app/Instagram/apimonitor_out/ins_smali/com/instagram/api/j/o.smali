.class public final Lcom/instagram/api/j/o;
.super Lcom/instagram/api/j/h;
.source "StreamingApiRequestLoaderCallbacks.java"
.field private final a:Lcom/instagram/api/j/g;
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/api/j/g;Lcom/instagram/api/j/a;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/instagram/api/j/h;-><init>(Landroid/content/Context;Lcom/instagram/api/j/c;Lcom/instagram/api/j/a;)V
iput-object p2, p0, Lcom/instagram/api/j/o;->a:Lcom/instagram/api/j/g;
return-void
.end method
.method static synthetic a(Lcom/instagram/api/j/o;)Lcom/instagram/api/j/g;
.registers 2
iget-object v0, p0, Lcom/instagram/api/j/o;->a:Lcom/instagram/api/j/g;
return-object v0
.end method
.method static synthetic a(Lcom/fasterxml/jackson/a/l;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/instagram/api/j/o;->b(Lcom/fasterxml/jackson/a/l;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static b(Lcom/fasterxml/jackson/a/l;)Ljava/lang/String;
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_47
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
:goto_d
:cond_d
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
if-eq v1, v2, :cond_42
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v1
const-string v2, "errors"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3c
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;
if-eq v1, v2, :cond_d
:goto_2c
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;
if-eq v1, v2, :cond_d
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_2c
:cond_3c
if-eqz v1, :cond_d
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
goto :goto_d
:cond_42
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_46
return-object v0
:cond_47
invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v0
goto :goto_46
.end method
.method public final a(Landroid/os/Bundle;)Landroid/support/v4/a/c;
.registers 4
invoke-virtual {p0}, Lcom/instagram/api/j/o;->a()Lcom/instagram/api/j/a;
move-result-object v0
if-eqz v0, :cond_d
invoke-virtual {p0}, Lcom/instagram/api/j/o;->a()Lcom/instagram/api/j/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/api/j/a;->a()V
:cond_d
new-instance v0, Lcom/instagram/api/j/p;
invoke-virtual {p0}, Lcom/instagram/api/j/o;->b()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/instagram/api/j/p;-><init>(Lcom/instagram/api/j/o;Landroid/content/Context;)V
return-object v0
.end method