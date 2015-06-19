.class public Lcom/ubermedia/uberads/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "event"
.field public static final b:Ljava/lang/String; = "latency"
.field public static final c:Ljava/lang/String; = "udid"
.field public static final d:Ljava/lang/String; = "ads"
.field public static final e:Ljava/lang/String; = "request_id"
.field private f:Ljava/lang/String;
.field private g:Ljava/lang/String;
.field private h:Ljava/lang/String;
.field private i:I
.field private j:Ljava/util/ArrayList;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/ubermedia/uberads/c;->f:Ljava/lang/String;
iput-object p2, p0, Lcom/ubermedia/uberads/c;->g:Ljava/lang/String;
iput-object p3, p0, Lcom/ubermedia/uberads/c;->h:Ljava/lang/String;
iput p4, p0, Lcom/ubermedia/uberads/c;->i:I
iput-object p5, p0, Lcom/ubermedia/uberads/c;->j:Ljava/util/ArrayList;
return-void
.end method
.method public static a(Lorg/json/JSONObject;)Lcom/ubermedia/uberads/c;
.registers 9
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Json object can\'t be null here."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
const-string v0, "event"
invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v0, "request_id"
invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v0, "udid"
invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v0, "latency"
invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v4
const-string v0, "ads"
invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v6
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
if-eqz v6, :cond_4a
invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
move-result v0
if-lez v0, :cond_4a
const/4 v0, 0x0
:goto_36
invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
move-result v7
if-ge v0, v7, :cond_4a
invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v7
invoke-static {v7}, Lcom/ubermedia/uberads/UberAd;->a(Lorg/json/JSONObject;)Lcom/ubermedia/uberads/UberAd;
move-result-object v7
invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_36
:cond_4a
new-instance v0, Lcom/ubermedia/uberads/c;
invoke-direct/range {v0 .. v5}, Lcom/ubermedia/uberads/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;)V
return-object v0
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ubermedia/uberads/c;->f:Ljava/lang/String;
return-object v0
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ubermedia/uberads/c;->g:Ljava/lang/String;
return-object v0
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ubermedia/uberads/c;->h:Ljava/lang/String;
return-object v0
.end method
.method public d()I
.registers 2
iget v0, p0, Lcom/ubermedia/uberads/c;->i:I
return v0
.end method
.method public e()Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/ubermedia/uberads/c;->j:Ljava/util/ArrayList;
return-object v0
.end method