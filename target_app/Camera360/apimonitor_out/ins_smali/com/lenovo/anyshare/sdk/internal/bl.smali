.class public Lcom/lenovo/anyshare/sdk/internal/bl;
.super Lcom/lenovo/content/base/ContentContainer;
.source "PackageContainer.java"
.field private d:I
.field private e:I
.field private f:Ljava/lang/Object;
.field private g:Z
.field private h:Ljava/lang/String;
.field private i:J
.method public constructor <init>(Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/ContentProperties;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0, p1, p2}, Lcom/lenovo/content/base/ContentContainer;-><init>(Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/ContentProperties;)V
const/4 v0, -0x1
iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/bl;->d:I
iput v1, p0, Lcom/lenovo/anyshare/sdk/internal/bl;->e:I
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bl;->f:Ljava/lang/Object;
iput-boolean v1, p0, Lcom/lenovo/anyshare/sdk/internal/bl;->g:Z
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bl;->h:Ljava/lang/String;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/lenovo/anyshare/sdk/internal/bl;->i:J
return-void
.end method
.method protected a(Lorg/json/JSONObject;)V
.registers 6
const-string/jumbo v1, "type"
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/bl;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v2
invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "id"
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/bl;->getId()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "ver"
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/bl;->getVer()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "name"
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/bl;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "has_thumbnail"
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/bl;->hasThumbnail()Z
move-result v2
invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
const-string/jumbo v1, "packageitemcount"
iget v2, p0, Lcom/lenovo/anyshare/sdk/internal/bl;->d:I
invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/bl;->a()Z
move-result v0
const-string/jumbo v1, "ispackaged"
invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
if-eqz v0, :cond_56
const-string/jumbo v1, "packagepath"
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/bl;->h:Ljava/lang/String;
invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "packagesize"
iget-wide v2, p0, Lcom/lenovo/anyshare/sdk/internal/bl;->i:J
invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
:cond_56
return-void
.end method
.method public final a()Z
.registers 4
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bl;->f:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/bl;->e:I
const/4 v2, 0x2
if-ne v0, v2, :cond_b
const/4 v0, 0x1
:goto_9
monitor-exit v1
return v0
:cond_b
const/4 v0, 0x0
goto :goto_9
:catchall_d
move-exception v0
monitor-exit v1
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_d
throw v0
.end method