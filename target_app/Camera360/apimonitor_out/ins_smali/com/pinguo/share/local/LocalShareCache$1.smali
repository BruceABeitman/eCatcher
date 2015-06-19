.class  Lcom/pinguo/share/local/LocalShareCache$1;
.super Ljava/lang/Object;
.source "LocalShareCache.java"
.implements Ljava/io/FilenameFilter;
.field private final synthetic val$newTempMap:Ljava/util/Map;
.field private final synthetic val$tempMap:Ljava/util/Map;
.field private final synthetic val$time:J
.method constructor <init>(JLjava/util/Map;Ljava/util/Map;)V
.registers 5
iput-wide p1, p0, Lcom/pinguo/share/local/LocalShareCache$1;->val$time:J
iput-object p3, p0, Lcom/pinguo/share/local/LocalShareCache$1;->val$tempMap:Ljava/util/Map;
iput-object p4, p0, Lcom/pinguo/share/local/LocalShareCache$1;->val$newTempMap:Ljava/util/Map;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
.registers 15
const/4 v6, 0x1
const/4 v7, 0x0
const-string/jumbo v8, "wx.tmp"
invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_d
move v6, v7
:cond_c
:goto_c
return v6
:cond_d
const-string/jumbo v8, ".jpg"
invoke-virtual {p2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_c
const-wide/16 v3, 0x0
const/4 v8, 0x0
:try_start_19
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v9
add-int/lit8 v9, v9, -0x4
invoke-virtual {p2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
:try_end_26
.catch Ljava/lang/Exception; {:try_start_19 .. :try_end_26} :catch_53
move-result-wide v3
iget-wide v8, p0, Lcom/pinguo/share/local/LocalShareCache$1;->val$time:J
sub-long/2addr v8, v3
invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J
move-result-wide v8
const-wide/32 v10, 0x5265c00
cmp-long v8, v8, v10
if-gez v8, :cond_c
const/4 v0, 0x0
iget-object v6, p0, Lcom/pinguo/share/local/LocalShareCache$1;->val$tempMap:Ljava/util/Map;
invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v6
invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v8
:cond_40
:goto_40
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-nez v6, :cond_55
if-eqz v0, :cond_51
iget-object v6, p0, Lcom/pinguo/share/local/LocalShareCache$1;->val$newTempMap:Ljava/util/Map;
invoke-virtual {v0}, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;->getSrcPath()Ljava/lang/String;
move-result-object v8
invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_51
move v6, v7
goto :goto_c
:catch_53
move-exception v1
goto :goto_c
:cond_55
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/Map$Entry;
invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;
invoke-virtual {v6}, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;->getTempName()Ljava/lang/String;
move-result-object v6
invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_40
invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/share/local/LocalShareCache$LocalShareBean;
goto :goto_40
.end method