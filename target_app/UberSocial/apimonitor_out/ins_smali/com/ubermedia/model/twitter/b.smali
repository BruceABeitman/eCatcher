.class public Lcom/ubermedia/model/twitter/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Z
.field private b:Z
.method public constructor <init>(Lorg/json/JSONArray;)V
.registers 6
const/4 v3, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-eqz p1, :cond_2b
const/4 v0, 0x0
:goto_7
invoke-virtual {p1}, Lorg/json/JSONArray;->length()I
move-result v1
if-ge v0, v1, :cond_2b
invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_1d
const-string v2, "following"
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_20
iput-boolean v3, p0, Lcom/ubermedia/model/twitter/b;->a:Z
:goto_1d
:cond_1d
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_20
const-string v2, "followed_by"
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1d
iput-boolean v3, p0, Lcom/ubermedia/model/twitter/b;->b:Z
goto :goto_1d
:cond_2b
return-void
.end method
.method public a()Z
.registers 2
iget-boolean v0, p0, Lcom/ubermedia/model/twitter/b;->a:Z
return v0
.end method
.method public b()Z
.registers 2
iget-boolean v0, p0, Lcom/ubermedia/model/twitter/b;->b:Z
return v0
.end method