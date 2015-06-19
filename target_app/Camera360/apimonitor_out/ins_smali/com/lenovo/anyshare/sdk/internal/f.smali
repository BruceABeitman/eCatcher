.class public final Lcom/lenovo/anyshare/sdk/internal/f;
.super Ljava/lang/Object;
.source "ShareChannel.java"
.field protected a:Landroid/content/Context;
.field protected b:Lcom/lenovo/channel/base/IShareHistory;
.field protected c:Lcom/lenovo/anyshare/sdk/internal/m$b;
.field protected d:Lcom/lenovo/channel/base/IUserListener;
.field  e:Lcom/lenovo/anyshare/sdk/internal/cp;
.field protected f:Lcom/lenovo/anyshare/sdk/internal/y$a;
.field private g:Lcom/lenovo/anyshare/sdk/internal/d;
.field private h:Lcom/lenovo/anyshare/sdk/internal/y;
.field private final i:Lcom/lenovo/anyshare/sdk/internal/ac;
.field private final j:Lcom/lenovo/anyshare/sdk/internal/h$a;
.field private final k:Lcom/lenovo/anyshare/sdk/internal/h$b;
.field private final l:Ljava/util/List;
.field private final m:Ljava/util/List;
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/anyshare/sdk/internal/d;Lcom/lenovo/channel/base/IShareHistory;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/h$a;
invoke-direct {v0}, Lcom/lenovo/anyshare/sdk/internal/h$a;-><init>()V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f;->j:Lcom/lenovo/anyshare/sdk/internal/h$a;
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/h$b;
invoke-direct {v0}, Lcom/lenovo/anyshare/sdk/internal/h$b;-><init>()V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f;->k:Lcom/lenovo/anyshare/sdk/internal/h$b;
new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f;->l:Ljava/util/List;
new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f;->m:Ljava/util/List;
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/f$3;
invoke-direct {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/f$3;-><init>(Lcom/lenovo/anyshare/sdk/internal/f;)V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f;->c:Lcom/lenovo/anyshare/sdk/internal/m$b;
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/f$4;
invoke-direct {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/f$4;-><init>(Lcom/lenovo/anyshare/sdk/internal/f;)V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f;->d:Lcom/lenovo/channel/base/IUserListener;
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/f$5;
invoke-direct {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/f$5;-><init>(Lcom/lenovo/anyshare/sdk/internal/f;)V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f;->e:Lcom/lenovo/anyshare/sdk/internal/cp;
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/f$6;
invoke-direct {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/f$6;-><init>(Lcom/lenovo/anyshare/sdk/internal/f;)V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f;->f:Lcom/lenovo/anyshare/sdk/internal/y$a;
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/f;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/lenovo/anyshare/sdk/internal/f;->g:Lcom/lenovo/anyshare/sdk/internal/d;
iput-object p3, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/ac;
invoke-direct {v0}, Lcom/lenovo/anyshare/sdk/internal/ac;-><init>()V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f;->i:Lcom/lenovo/anyshare/sdk/internal/ac;
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f;->i:Lcom/lenovo/anyshare/sdk/internal/ac;
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f;->e:Lcom/lenovo/anyshare/sdk/internal/cp;
invoke-virtual {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/ac;->a(Lcom/lenovo/anyshare/sdk/internal/cp;)V
return-void
.end method
.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/f;)Lcom/lenovo/anyshare/sdk/internal/h$b;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f;->k:Lcom/lenovo/anyshare/sdk/internal/h$b;
return-object v0
.end method
.method private a(Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;Ljava/util/List;)Ljava/util/List;
.registers 11
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_9
:goto_9
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_3e
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/lenovo/channel/base/UserInfo;
invoke-virtual {p1}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->clone()Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
move-result-object v1
iget-object v4, v3, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;
iget-object v5, v3, Lcom/lenovo/channel/base/UserInfo;->name:Ljava/lang/String;
invoke-virtual {v1, v4, v5}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->setTo(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->getSize()J
move-result-wide v4
const-wide/16 v6, 0x0
cmp-long v4, v4, v6
if-lez v4, :cond_31
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/f;->k:Lcom/lenovo/anyshare/sdk/internal/h$b;
iget-object v5, v3, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;
invoke-virtual {v4, v5, v1}, Lcom/lenovo/anyshare/sdk/internal/h$b;->a(Ljava/lang/String;Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;)V
:cond_31
invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
if-eqz v4, :cond_9
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
invoke-interface {v4, v1}, Lcom/lenovo/channel/base/IShareHistory;->insertCollectionShareRecord(Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;)V
goto :goto_9
:cond_3e
return-object v2
.end method
.method private a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
.registers 16
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_9
:cond_9
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v11
if-eqz v11, :cond_95
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v9
check-cast v9, Lcom/lenovo/channel/base/UserInfo;
new-instance v10, Ljava/util/ArrayList;
invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
new-instance v8, Ljava/util/HashMap;
invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_28
:goto_28
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v11
if-eqz v11, :cond_77
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
invoke-virtual {v7}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->clone()Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
move-result-object v5
iget-object v11, v9, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;
iget-object v12, v9, Lcom/lenovo/channel/base/UserInfo;->name:Ljava/lang/String;
invoke-virtual {v5, v11, v12}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->setTo(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v7}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->emptyContent()Z
move-result v11
if-nez v11, :cond_28
invoke-virtual {v7}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;
move-result-object v11
invoke-virtual {v11}, Lcom/lenovo/content/base/ContentItem;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v1
invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
if-nez v2, :cond_70
const/4 v11, 0x1
:goto_59
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v11
invoke-interface {v8, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v11, Lcom/lenovo/content/base/ContentType;->APP:Lcom/lenovo/content/base/ContentType;
if-ne v1, v11, :cond_28
invoke-virtual {v7}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;
move-result-object v11
invoke-virtual {v11}, Lcom/lenovo/content/base/ContentItem;->getId()Ljava/lang/String;
move-result-object v11
invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_28
:cond_70
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v11
add-int/lit8 v11, v11, 0x1
goto :goto_59
:cond_77
invoke-interface {v10}, Ljava/util/List;->isEmpty()Z
move-result v11
if-nez v11, :cond_87
iget-object v11, p0, Lcom/lenovo/anyshare/sdk/internal/f;->k:Lcom/lenovo/anyshare/sdk/internal/h$b;
iget-object v12, v9, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;
invoke-virtual {v11, v12, v10}, Lcom/lenovo/anyshare/sdk/internal/h$b;->a(Ljava/lang/String;Ljava/util/List;)V
invoke-direct {p0, v8, v0}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Ljava/util/Map;Ljava/util/List;)V
:cond_87
invoke-interface {v6, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
iget-object v11, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
if-eqz v11, :cond_9
iget-object v11, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
invoke-interface {v11, v10}, Lcom/lenovo/channel/base/IShareHistory;->insertItemShareRecords(Ljava/util/List;)V
goto/16 :goto_9
:cond_95
return-object v6
.end method
.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/anyshare/sdk/internal/g$a;)V
.registers 2
invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/g$a;)V
return-void
.end method
.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/anyshare/sdk/internal/g$b;)V
.registers 2
invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/g$b;)V
return-void
.end method
.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/anyshare/sdk/internal/g$c;)V
.registers 2
invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/g$c;)V
return-void
.end method
.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/anyshare/sdk/internal/g$d;)V
.registers 2
invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/g$d;)V
return-void
.end method
.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/anyshare/sdk/internal/g$e;)V
.registers 2
invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/g$e;)V
return-void
.end method
.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/f;->b(Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;Ljava/lang/String;)V
return-void
.end method
.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/channel/base/ShareRecord;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/channel/base/ShareRecord;I)V
return-void
.end method
.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/channel/base/ShareRecord;J)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/channel/base/ShareRecord;J)V
return-void
.end method
.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/channel/base/ShareRecord;JJ)V
.registers 6
invoke-direct/range {p0 .. p5}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/channel/base/ShareRecord;JJ)V
return-void
.end method
.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/channel/base/ShareRecord;ZLcom/lenovo/channel/exception/TransmitException;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/channel/base/ShareRecord;ZLcom/lenovo/channel/exception/TransmitException;)V
return-void
.end method
.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/channel/base/ShareRecord;ZLcom/lenovo/channel/exception/TransmitException;Z)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/channel/base/ShareRecord;ZLcom/lenovo/channel/exception/TransmitException;Z)V
return-void
.end method
.method static synthetic a(Lcom/lenovo/anyshare/sdk/internal/f;Ljava/util/List;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/f;->b(Ljava/util/List;Ljava/lang/String;)V
return-void
.end method
.method private a(Lcom/lenovo/anyshare/sdk/internal/g$a;)V
.registers 13
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/g$a;->b()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/g$a;->c()Lcom/lenovo/channel/base/ShareRecord$ShareType;
move-result-object v5
new-instance v0, Lcom/lenovo/channel/exception/TransmitException;
const/16 v6, 0x8
const-string/jumbo v7, "Canceled by remote"
invoke-direct {v0, v6, v7}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/String;)V
sget-object v6, Lcom/lenovo/channel/base/ShareRecord$ShareType;->SEND:Lcom/lenovo/channel/base/ShareRecord$ShareType;
if-ne v5, v6, :cond_28
iget-object v6, p0, Lcom/lenovo/anyshare/sdk/internal/f;->i:Lcom/lenovo/anyshare/sdk/internal/ac;
invoke-virtual {v6, v3}, Lcom/lenovo/anyshare/sdk/internal/ac;->a(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/cq;
move-result-object v4
if-nez v4, :cond_1f
:goto_1e
:cond_1e
return-void
:cond_1f
iget-object v6, p0, Lcom/lenovo/anyshare/sdk/internal/f;->e:Lcom/lenovo/anyshare/sdk/internal/cp;
invoke-interface {v6, v4, v0}, Lcom/lenovo/anyshare/sdk/internal/cp;->a(Lcom/lenovo/anyshare/sdk/internal/cq;Ljava/lang/Exception;)Z
invoke-virtual {p0, v3}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Ljava/lang/String;)V
goto :goto_1e
:cond_28
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/g$a;->g()Ljava/lang/String;
move-result-object v1
iget-object v6, p0, Lcom/lenovo/anyshare/sdk/internal/f;->k:Lcom/lenovo/anyshare/sdk/internal/h$b;
invoke-virtual {v6, v1, v3}, Lcom/lenovo/anyshare/sdk/internal/h$b;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord;
move-result-object v2
if-eqz v2, :cond_1e
instance-of v6, v2, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
if-eqz v6, :cond_74
iget-object v6, p0, Lcom/lenovo/anyshare/sdk/internal/f;->k:Lcom/lenovo/anyshare/sdk/internal/h$b;
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v7
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;
move-result-object v8
invoke-virtual {v8}, Lcom/lenovo/content/base/ContentItem;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v8
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;
move-result-object v9
invoke-virtual {v9}, Lcom/lenovo/content/base/ContentItem;->getId()Ljava/lang/String;
move-result-object v9
invoke-virtual {v6, v7, v8, v9}, Lcom/lenovo/anyshare/sdk/internal/h$b;->a(Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
:goto_51
sget-object v6, Lcom/lenovo/channel/base/ShareRecord$Status;->ERROR:Lcom/lenovo/channel/base/ShareRecord$Status;
invoke-virtual {v2, v6}, Lcom/lenovo/channel/base/ShareRecord;->setStatus(Lcom/lenovo/channel/base/ShareRecord$Status;)V
iget-object v6, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
if-eqz v6, :cond_6f
iget-object v6, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord;->getType()Lcom/lenovo/channel/base/ShareRecord$ShareType;
move-result-object v7
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord;->getShareId()Ljava/lang/String;
move-result-object v8
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v9
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord;->getStatus()Lcom/lenovo/channel/base/ShareRecord$Status;
move-result-object v10
invoke-interface {v6, v7, v8, v9, v10}, Lcom/lenovo/channel/base/IShareHistory;->updateShareRecordStatus(Lcom/lenovo/channel/base/ShareRecord$ShareType;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/channel/base/ShareRecord$Status;)V
:cond_6f
const/4 v6, 0x0
invoke-direct {p0, v2, v6, v0}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/channel/base/ShareRecord;ZLcom/lenovo/channel/exception/TransmitException;)V
goto :goto_1e
:cond_74
iget-object v6, p0, Lcom/lenovo/anyshare/sdk/internal/f;->k:Lcom/lenovo/anyshare/sdk/internal/h$b;
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v7
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord;->getShareId()Ljava/lang/String;
move-result-object v8
invoke-virtual {v6, v7, v8}, Lcom/lenovo/anyshare/sdk/internal/h$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
goto :goto_51
.end method
.method private a(Lcom/lenovo/anyshare/sdk/internal/g$b;)V
.registers 12
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/g$b;->b()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/g$b;->c()Lcom/lenovo/channel/base/ShareRecord$ShareType;
move-result-object v4
new-instance v0, Lcom/lenovo/channel/exception/TransmitException;
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/g$b;->e()I
move-result v5
const-string/jumbo v6, "Share Error by peer user"
invoke-direct {v0, v5, v6}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/String;)V
sget-object v5, Lcom/lenovo/channel/base/ShareRecord$ShareType;->RECEIVE:Lcom/lenovo/channel/base/ShareRecord$ShareType;
if-ne v4, v5, :cond_24
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/g$b;->g()Ljava/lang/String;
move-result-object v1
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/f;->k:Lcom/lenovo/anyshare/sdk/internal/h$b;
invoke-virtual {v5, v1, v3}, Lcom/lenovo/anyshare/sdk/internal/h$b;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord;
move-result-object v2
if-nez v2, :cond_25
:goto_24
:cond_24
return-void
:cond_25
instance-of v5, v2, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
if-eqz v5, :cond_65
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/f;->k:Lcom/lenovo/anyshare/sdk/internal/h$b;
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v6
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;
move-result-object v7
invoke-virtual {v7}, Lcom/lenovo/content/base/ContentItem;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v7
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;
move-result-object v8
invoke-virtual {v8}, Lcom/lenovo/content/base/ContentItem;->getId()Ljava/lang/String;
move-result-object v8
invoke-virtual {v5, v6, v7, v8}, Lcom/lenovo/anyshare/sdk/internal/h$b;->a(Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
:goto_42
:cond_42
sget-object v5, Lcom/lenovo/channel/base/ShareRecord$Status;->ERROR:Lcom/lenovo/channel/base/ShareRecord$Status;
invoke-virtual {v2, v5}, Lcom/lenovo/channel/base/ShareRecord;->setStatus(Lcom/lenovo/channel/base/ShareRecord$Status;)V
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
if-eqz v5, :cond_60
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord;->getType()Lcom/lenovo/channel/base/ShareRecord$ShareType;
move-result-object v6
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord;->getShareId()Ljava/lang/String;
move-result-object v7
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v8
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord;->getStatus()Lcom/lenovo/channel/base/ShareRecord$Status;
move-result-object v9
invoke-interface {v5, v6, v7, v8, v9}, Lcom/lenovo/channel/base/IShareHistory;->updateShareRecordStatus(Lcom/lenovo/channel/base/ShareRecord$ShareType;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/channel/base/ShareRecord$Status;)V
:cond_60
const/4 v5, 0x0
invoke-direct {p0, v2, v5, v0}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/channel/base/ShareRecord;ZLcom/lenovo/channel/exception/TransmitException;)V
goto :goto_24
:cond_65
instance-of v5, v2, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
if-eqz v5, :cond_42
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/f;->k:Lcom/lenovo/anyshare/sdk/internal/h$b;
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v6
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord;->getShareId()Ljava/lang/String;
move-result-object v7
invoke-virtual {v5, v6, v7}, Lcom/lenovo/anyshare/sdk/internal/h$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
goto :goto_42
.end method
.method private a(Lcom/lenovo/anyshare/sdk/internal/g$c;)V
.registers 8
const/4 v0, 0x0
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/g$c;->e()Z
move-result v1
if-eqz v1, :cond_67
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f;->k:Lcom/lenovo/anyshare/sdk/internal/h$b;
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/g$c;->g()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/g$c;->c()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/h$b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
move-result-object v0
if-nez v0, :cond_18
:cond_17
:goto_17
return-void
:cond_18
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f;->k:Lcom/lenovo/anyshare/sdk/internal/h$b;
invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getShareId()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/h$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
:goto_25
sget-object v1, Lcom/lenovo/channel/base/ShareRecord$Status;->COMPLETED:Lcom/lenovo/channel/base/ShareRecord$Status;
invoke-virtual {v0, v1}, Lcom/lenovo/channel/base/ShareRecord;->setStatus(Lcom/lenovo/channel/base/ShareRecord$Status;)V
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
if-eqz v1, :cond_61
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getType()Lcom/lenovo/channel/base/ShareRecord$ShareType;
move-result-object v2
invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getShareId()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getStatus()Lcom/lenovo/channel/base/ShareRecord$Status;
move-result-object v5
invoke-interface {v1, v2, v3, v4, v5}, Lcom/lenovo/channel/base/IShareHistory;->updateShareRecordStatus(Lcom/lenovo/channel/base/ShareRecord$ShareType;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/channel/base/ShareRecord$Status;)V
invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getRecordType()Lcom/lenovo/channel/base/ShareRecord$RecordType;
move-result-object v1
sget-object v2, Lcom/lenovo/channel/base/ShareRecord$RecordType;->ITEM:Lcom/lenovo/channel/base/ShareRecord$RecordType;
if-ne v1, v2, :cond_61
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
sget-object v2, Lcom/lenovo/channel/base/ShareRecord$ShareType;->SEND:Lcom/lenovo/channel/base/ShareRecord$ShareType;
invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;
move-result-object v3
invoke-virtual {v3}, Lcom/lenovo/content/base/ContentItem;->getSize()J
move-result-wide v3
invoke-interface {v1, v2, v3, v4}, Lcom/lenovo/channel/base/IShareHistory;->addSharedTotalSize(Lcom/lenovo/channel/base/ShareRecord$ShareType;J)V
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
sget-object v2, Lcom/lenovo/channel/base/ShareRecord$ShareType;->SEND:Lcom/lenovo/channel/base/ShareRecord$ShareType;
invoke-interface {v1, v2}, Lcom/lenovo/channel/base/IShareHistory;->increaseSharedItemCount(Lcom/lenovo/channel/base/ShareRecord$ShareType;)V
:cond_61
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {p0, v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/channel/base/ShareRecord;ZLcom/lenovo/channel/exception/TransmitException;)V
goto :goto_17
:cond_67
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f;->k:Lcom/lenovo/anyshare/sdk/internal/h$b;
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/g$c;->g()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/g$c;->b()Lcom/lenovo/content/base/ContentType;
move-result-object v3
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/g$c;->c()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/anyshare/sdk/internal/h$b;->b(Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
move-result-object v0
if-eqz v0, :cond_17
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f;->k:Lcom/lenovo/anyshare/sdk/internal/h$b;
invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;
move-result-object v3
invoke-virtual {v3}, Lcom/lenovo/content/base/ContentItem;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v3
invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;
move-result-object v4
invoke-virtual {v4}, Lcom/lenovo/content/base/ContentItem;->getId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v2, v3, v4}, Lcom/lenovo/anyshare/sdk/internal/h$b;->a(Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
goto :goto_25
.end method
.method private a(Lcom/lenovo/anyshare/sdk/internal/g$d;)V
.registers 5
const-string/jumbo v1, "ShareChannel"
const-string/jumbo v2, "recieve notify message"
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/g$d;->a()Ljava/util/List;
move-result-object v0
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f;->j:Lcom/lenovo/anyshare/sdk/internal/h$a;
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/g$d;->g()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2, v0}, Lcom/lenovo/anyshare/sdk/internal/h$a;->a(Ljava/lang/String;Ljava/util/List;)V
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
if-eqz v1, :cond_1f
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
invoke-interface {v1, v0}, Lcom/lenovo/channel/base/IShareHistory;->insertItemShareRecords(Ljava/util/List;)V
:cond_1f
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-direct {p0, v1}, Lcom/lenovo/anyshare/sdk/internal/f;->b(Ljava/util/List;)V
return-void
.end method
.method private a(Lcom/lenovo/anyshare/sdk/internal/g$e;)V
.registers 9
const-string/jumbo v5, "ShareChannel"
const-string/jumbo v6, "recieve notify message"
invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/g$e;->a()Ljava/util/List;
move-result-object v4
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_16
:goto_16
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_4e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/lenovo/channel/base/ShareRecord;
invoke-virtual {v3}, Lcom/lenovo/channel/base/ShareRecord;->getRecordType()Lcom/lenovo/channel/base/ShareRecord$RecordType;
move-result-object v5
sget-object v6, Lcom/lenovo/channel/base/ShareRecord$RecordType;->COLLECTION:Lcom/lenovo/channel/base/ShareRecord$RecordType;
if-ne v5, v6, :cond_40
move-object v0, v3
check-cast v0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/f;->j:Lcom/lenovo/anyshare/sdk/internal/h$a;
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/g$e;->g()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6, v0}, Lcom/lenovo/anyshare/sdk/internal/h$a;->a(Ljava/lang/String;Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;)V
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
if-eqz v5, :cond_16
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
invoke-interface {v5, v0}, Lcom/lenovo/channel/base/IShareHistory;->insertCollectionShareRecord(Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;)V
goto :goto_16
:cond_40
invoke-virtual {v3}, Lcom/lenovo/channel/base/ShareRecord;->getRecordType()Lcom/lenovo/channel/base/ShareRecord$RecordType;
move-result-object v5
sget-object v6, Lcom/lenovo/channel/base/ShareRecord$RecordType;->ITEM:Lcom/lenovo/channel/base/ShareRecord$RecordType;
if-ne v5, v6, :cond_16
check-cast v3, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_16
:cond_4e
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v5
if-nez v5, :cond_66
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/f;->j:Lcom/lenovo/anyshare/sdk/internal/h$a;
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/g$e;->g()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6, v2}, Lcom/lenovo/anyshare/sdk/internal/h$a;->a(Ljava/lang/String;Ljava/util/List;)V
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
if-eqz v5, :cond_66
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
invoke-interface {v5, v2}, Lcom/lenovo/channel/base/IShareHistory;->insertItemShareRecords(Ljava/util/List;)V
:cond_66
invoke-direct {p0, v4}, Lcom/lenovo/anyshare/sdk/internal/f;->b(Ljava/util/List;)V
return-void
.end method
.method private a(Lcom/lenovo/channel/base/ShareRecord;I)V
.registers 7
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/f;->g:Lcom/lenovo/anyshare/sdk/internal/d;
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/d;->c()Lcom/lenovo/anyshare/sdk/internal/m;
move-result-object v1
const/4 v2, 0x7
if-ne p2, v2, :cond_b
if-nez v1, :cond_c
:goto_b
:cond_b
return-void
:cond_c
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/g$b;
invoke-virtual {p1}, Lcom/lenovo/channel/base/ShareRecord;->getType()Lcom/lenovo/channel/base/ShareRecord$ShareType;
move-result-object v2
invoke-virtual {p1}, Lcom/lenovo/channel/base/ShareRecord;->getShareId()Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v2, v3, p2}, Lcom/lenovo/anyshare/sdk/internal/g$b;-><init>(Lcom/lenovo/channel/base/ShareRecord$ShareType;Ljava/lang/String;I)V
invoke-virtual {p1}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/lenovo/anyshare/sdk/internal/g$b;->b(Ljava/lang/String;)V
invoke-interface {v1, v0}, Lcom/lenovo/anyshare/sdk/internal/m;->a(Lcom/lenovo/anyshare/sdk/internal/n;)V
goto :goto_b
.end method
.method private a(Lcom/lenovo/channel/base/ShareRecord;J)V
.registers 7
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/f;->m:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_6
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_18
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/lenovo/channel/base/IShareSendListener;
:try_start_12
invoke-interface {v1, p1, p2, p3}, Lcom/lenovo/channel/base/IShareSendListener;->onStarted(Lcom/lenovo/channel/base/ShareRecord;J)V
:try_end_15
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16
goto :goto_6
:catch_16
move-exception v2
goto :goto_6
:cond_18
return-void
.end method
.method private a(Lcom/lenovo/channel/base/ShareRecord;JJ)V
.registers 13
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f;->l:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_6
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_1b
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/channel/base/IShareReceiveListener;
move-object v1, p1
move-wide v2, p2
move-wide v4, p4
:try_start_15
invoke-interface/range {v0 .. v5}, Lcom/lenovo/channel/base/IShareReceiveListener;->onProgress(Lcom/lenovo/channel/base/ShareRecord;JJ)V
:try_end_18
.catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19
goto :goto_6
:catch_19
move-exception v1
goto :goto_6
:cond_1b
return-void
.end method
.method private a(Lcom/lenovo/channel/base/ShareRecord;ZLcom/lenovo/channel/exception/TransmitException;)V
.registers 9
const-string/jumbo v2, "ShareChannel"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "fire OnSent complete:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/f;->m:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_20
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_32
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/lenovo/channel/base/IShareSendListener;
:try_start_2c
invoke-interface {v1, p1, p2, p3}, Lcom/lenovo/channel/base/IShareSendListener;->onResult(Lcom/lenovo/channel/base/ShareRecord;ZLcom/lenovo/channel/exception/TransmitException;)V
:try_end_2f
.catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30
goto :goto_20
:catch_30
move-exception v2
goto :goto_20
:cond_32
return-void
.end method
.method private a(Lcom/lenovo/channel/base/ShareRecord;ZLcom/lenovo/channel/exception/TransmitException;Z)V
.registers 8
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/f;->l:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_6
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_18
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/lenovo/channel/base/IShareReceiveListener;
:try_start_12
invoke-interface {v1, p1, p2, p3, p4}, Lcom/lenovo/channel/base/IShareReceiveListener;->onResult(Lcom/lenovo/channel/base/ShareRecord;ZLcom/lenovo/channel/exception/TransmitException;Z)V
:try_end_15
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16
goto :goto_6
:catch_16
move-exception v2
goto :goto_6
:cond_18
return-void
.end method
.method private a(Ljava/util/Collection;)V
.registers 5
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/f;->l:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_6
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_18
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/lenovo/channel/base/IShareReceiveListener;
:try_start_12
invoke-interface {v1, p1}, Lcom/lenovo/channel/base/IShareReceiveListener;->onReceived(Ljava/util/Collection;)V
:try_end_15
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16
goto :goto_6
:catch_16
move-exception v2
goto :goto_6
:cond_18
invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/f;->b(Ljava/util/Collection;)V
return-void
.end method
.method private a(Ljava/util/Map;Ljava/util/List;)V
.registers 12
sget-boolean v6, Lcom/lenovo/anyshare/sdk/internal/a;->b:Z
if-nez v6, :cond_5
:cond_4
return-void
:cond_5
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v6
invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_12
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_3a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/Map$Entry;
invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/lenovo/content/base/ContentType;
invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/lang/Integer;
invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {v4}, Lcom/lenovo/content/base/ContentType;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_12
:cond_3a
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;
move-result-object v6
iget-object v7, p0, Lcom/lenovo/anyshare/sdk/internal/f;->a:Landroid/content/Context;
const-string/jumbo v8, "SendFileTypeCount"
invoke-virtual {v6, v7, v8, v3}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_4a
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_4
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/String;
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;
move-result-object v6
iget-object v7, p0, Lcom/lenovo/anyshare/sdk/internal/f;->a:Landroid/content/Context;
const-string/jumbo v8, "SentApp"
invoke-virtual {v6, v7, v8, v5}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_4a
.end method
.method private a(Ljava/util/List;)Z
.registers 5
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_4
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_18
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->emptyContent()Z
move-result v2
if-eqz v2, :cond_4
const/4 v2, 0x1
:goto_17
return v2
:cond_18
const/4 v2, 0x0
goto :goto_17
.end method
.method static synthetic b(Lcom/lenovo/anyshare/sdk/internal/f;)Lcom/lenovo/anyshare/sdk/internal/h$a;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f;->j:Lcom/lenovo/anyshare/sdk/internal/h$a;
return-object v0
.end method
.method private b(Ljava/lang/String;)Ljava/util/List;
.registers 6
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
if-eqz v0, :cond_13
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->c()Ljava/util/List;
move-result-object v3
invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
:cond_12
:goto_12
return-object v2
:cond_13
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/i;->b(Ljava/lang/String;)Lcom/lenovo/channel/base/UserInfo;
move-result-object v1
if-eqz v1, :cond_12
invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_12
.end method
.method static synthetic b(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/channel/base/ShareRecord;JJ)V
.registers 6
invoke-direct/range {p0 .. p5}, Lcom/lenovo/anyshare/sdk/internal/f;->b(Lcom/lenovo/channel/base/ShareRecord;JJ)V
return-void
.end method
.method private static b(Lcom/lenovo/anyshare/sdk/internal/m;)V
.registers 3
const-string/jumbo v0, "content_items"
const-class v1, Lcom/lenovo/anyshare/sdk/internal/g$d;
invoke-interface {p0, v0, v1}, Lcom/lenovo/anyshare/sdk/internal/m;->a(Ljava/lang/String;Ljava/lang/Class;)V
const-string/jumbo v0, "contents_notify"
const-class v1, Lcom/lenovo/anyshare/sdk/internal/g$e;
invoke-interface {p0, v0, v1}, Lcom/lenovo/anyshare/sdk/internal/m;->a(Ljava/lang/String;Ljava/lang/Class;)V
const-string/jumbo v0, "cancel_shared_item"
const-class v1, Lcom/lenovo/anyshare/sdk/internal/g$a;
invoke-interface {p0, v0, v1}, Lcom/lenovo/anyshare/sdk/internal/m;->a(Ljava/lang/String;Ljava/lang/Class;)V
const-string/jumbo v0, "content_item_exist"
const-class v1, Lcom/lenovo/anyshare/sdk/internal/g$c;
invoke-interface {p0, v0, v1}, Lcom/lenovo/anyshare/sdk/internal/m;->a(Ljava/lang/String;Ljava/lang/Class;)V
const-string/jumbo v0, "content_item"
const-class v1, Lcom/lenovo/anyshare/sdk/internal/g$f;
invoke-interface {p0, v0, v1}, Lcom/lenovo/anyshare/sdk/internal/m;->a(Ljava/lang/String;Ljava/lang/Class;)V
const-string/jumbo v0, "content_item_error"
const-class v1, Lcom/lenovo/anyshare/sdk/internal/g$b;
invoke-interface {p0, v0, v1}, Lcom/lenovo/anyshare/sdk/internal/m;->a(Ljava/lang/String;Ljava/lang/Class;)V
return-void
.end method
.method private b(Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;Ljava/lang/String;)V
.registers 16
invoke-direct {p0, p2}, Lcom/lenovo/anyshare/sdk/internal/f;->b(Ljava/lang/String;)Ljava/util/List;
move-result-object v6
invoke-interface {v6}, Ljava/util/List;->isEmpty()Z
move-result v8
if-eqz v8, :cond_b
:cond_a
return-void
:cond_b
invoke-direct {p0, p1, v6}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;Ljava/util/List;)Ljava/util/List;
move-result-object v4
invoke-direct {p0, v4}, Lcom/lenovo/anyshare/sdk/internal/f;->c(Ljava/util/List;)V
const/4 v1, 0x1
invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_17
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_29
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/lenovo/channel/base/UserInfo;
invoke-virtual {v7}, Lcom/lenovo/channel/base/UserInfo;->isSupportCollection()Z
move-result v1
if-nez v1, :cond_17
:cond_29
if-nez v1, :cond_75
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_2f
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_a
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/lenovo/channel/base/ShareRecord;
sget-object v8, Lcom/lenovo/channel/base/ShareRecord$Status;->ERROR:Lcom/lenovo/channel/base/ShareRecord$Status;
invoke-virtual {v5, v8}, Lcom/lenovo/channel/base/ShareRecord;->setStatus(Lcom/lenovo/channel/base/ShareRecord$Status;)V
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
if-eqz v8, :cond_59
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
invoke-virtual {v5}, Lcom/lenovo/channel/base/ShareRecord;->getType()Lcom/lenovo/channel/base/ShareRecord$ShareType;
move-result-object v9
invoke-virtual {v5}, Lcom/lenovo/channel/base/ShareRecord;->getShareId()Ljava/lang/String;
move-result-object v10
invoke-virtual {v5}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v11
invoke-virtual {v5}, Lcom/lenovo/channel/base/ShareRecord;->getStatus()Lcom/lenovo/channel/base/ShareRecord$Status;
move-result-object v12
invoke-interface {v8, v9, v10, v11, v12}, Lcom/lenovo/channel/base/IShareHistory;->updateShareRecordStatus(Lcom/lenovo/channel/base/ShareRecord$ShareType;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/channel/base/ShareRecord$Status;)V
:cond_59
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/f;->k:Lcom/lenovo/anyshare/sdk/internal/h$b;
invoke-virtual {v5}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v9
invoke-virtual {v5}, Lcom/lenovo/channel/base/ShareRecord;->getShareId()Ljava/lang/String;
move-result-object v10
invoke-virtual {v8, v9, v10}, Lcom/lenovo/anyshare/sdk/internal/h$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
const/4 v8, 0x0
new-instance v9, Lcom/lenovo/channel/exception/TransmitException;
const/16 v10, 0x9
const-string/jumbo v11, "one or more taget devices do not support receive collection"
invoke-direct {v9, v10, v11}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/String;)V
invoke-direct {p0, v5, v8, v9}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/channel/base/ShareRecord;ZLcom/lenovo/channel/exception/TransmitException;)V
goto :goto_2f
:cond_75
new-instance v3, Lcom/lenovo/anyshare/sdk/internal/g$e;
invoke-direct {v3}, Lcom/lenovo/anyshare/sdk/internal/g$e;-><init>()V
invoke-virtual {v3, p1}, Lcom/lenovo/anyshare/sdk/internal/g$e;->a(Lcom/lenovo/channel/base/ShareRecord;)V
invoke-virtual {v3, p2}, Lcom/lenovo/anyshare/sdk/internal/g$e;->b(Ljava/lang/String;)V
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/f;->g:Lcom/lenovo/anyshare/sdk/internal/d;
invoke-virtual {v8}, Lcom/lenovo/anyshare/sdk/internal/d;->c()Lcom/lenovo/anyshare/sdk/internal/m;
move-result-object v2
if-eqz v2, :cond_8b
invoke-interface {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/m;->a(Lcom/lenovo/anyshare/sdk/internal/n;)V
:cond_8b
invoke-virtual {p1}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->getSize()J
move-result-wide v8
const-wide/16 v10, 0x0
cmp-long v8, v8, v10
if-eqz v8, :cond_9b
invoke-virtual {p1}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->emptyContent()Z
move-result v8
if-eqz v8, :cond_a
:cond_9b
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_9f
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_a
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/lenovo/channel/base/ShareRecord;
sget-object v8, Lcom/lenovo/channel/base/ShareRecord$Status;->COMPLETED:Lcom/lenovo/channel/base/ShareRecord$Status;
invoke-virtual {v5, v8}, Lcom/lenovo/channel/base/ShareRecord;->setStatus(Lcom/lenovo/channel/base/ShareRecord$Status;)V
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
if-eqz v8, :cond_c9
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
invoke-virtual {v5}, Lcom/lenovo/channel/base/ShareRecord;->getType()Lcom/lenovo/channel/base/ShareRecord$ShareType;
move-result-object v9
invoke-virtual {v5}, Lcom/lenovo/channel/base/ShareRecord;->getShareId()Ljava/lang/String;
move-result-object v10
invoke-virtual {v5}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v11
invoke-virtual {v5}, Lcom/lenovo/channel/base/ShareRecord;->getStatus()Lcom/lenovo/channel/base/ShareRecord$Status;
move-result-object v12
invoke-interface {v8, v9, v10, v11, v12}, Lcom/lenovo/channel/base/IShareHistory;->updateShareRecordStatus(Lcom/lenovo/channel/base/ShareRecord$ShareType;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/channel/base/ShareRecord$Status;)V
:cond_c9
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/f;->k:Lcom/lenovo/anyshare/sdk/internal/h$b;
invoke-virtual {v5}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v9
invoke-virtual {v5}, Lcom/lenovo/channel/base/ShareRecord;->getShareId()Ljava/lang/String;
move-result-object v10
invoke-virtual {v8, v9, v10}, Lcom/lenovo/anyshare/sdk/internal/h$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
const/4 v8, 0x1
const/4 v9, 0x0
invoke-direct {p0, v5, v8, v9}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/channel/base/ShareRecord;ZLcom/lenovo/channel/exception/TransmitException;)V
goto :goto_9f
.end method
.method private b(Lcom/lenovo/channel/base/ShareRecord;JJ)V
.registers 13
const-string/jumbo v1, "ShareChannel"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "fire OnSent progress:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f;->m:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_20
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_35
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/channel/base/IShareSendListener;
move-object v1, p1
move-wide v2, p2
move-wide v4, p4
:try_start_2f
invoke-interface/range {v0 .. v5}, Lcom/lenovo/channel/base/IShareSendListener;->onProgress(Lcom/lenovo/channel/base/ShareRecord;JJ)V
:try_end_32
.catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_33
goto :goto_20
:catch_33
move-exception v1
goto :goto_20
:cond_35
return-void
.end method
.method private b(Ljava/util/Collection;)V
.registers 19
sget-boolean v13, Lcom/lenovo/anyshare/sdk/internal/a;->b:Z
if-nez v13, :cond_5
:goto_4
:cond_4
return-void
:cond_5
const-wide/16 v8, 0x0
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->b()Ljava/lang/String;
move-result-object v10
new-instance v12, Ljava/util/HashMap;
invoke-direct {v12}, Ljava/util/HashMap;-><init>()V
invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_14
:goto_14
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v13
if-eqz v13, :cond_71
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v11
check-cast v11, Lcom/lenovo/channel/base/ShareRecord;
invoke-virtual {v11}, Lcom/lenovo/channel/base/ShareRecord;->getRecordType()Lcom/lenovo/channel/base/ShareRecord$RecordType;
move-result-object v13
sget-object v14, Lcom/lenovo/channel/base/ShareRecord$RecordType;->COLLECTION:Lcom/lenovo/channel/base/ShareRecord$RecordType;
if-eq v13, v14, :cond_14
invoke-virtual {v11}, Lcom/lenovo/channel/base/ShareRecord;->emptyContent()Z
move-result v13
if-nez v13, :cond_14
invoke-virtual {v11}, Lcom/lenovo/channel/base/ShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;
move-result-object v13
invoke-virtual {v13}, Lcom/lenovo/content/base/ContentItem;->getSize()J
move-result-wide v13
add-long/2addr v8, v13
invoke-virtual {v11}, Lcom/lenovo/channel/base/ShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;
move-result-object v13
invoke-virtual {v13}, Lcom/lenovo/content/base/ContentItem;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v1
invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
if-nez v2, :cond_6a
const/4 v13, 0x1
:goto_48
invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
invoke-interface {v12, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v13, Lcom/lenovo/content/base/ContentType;->APP:Lcom/lenovo/content/base/ContentType;
if-ne v1, v13, :cond_14
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;
move-result-object v13
move-object/from16 v0, p0
iget-object v14, v0, Lcom/lenovo/anyshare/sdk/internal/f;->a:Landroid/content/Context;
const-string/jumbo v15, "ReceivedApp"
invoke-virtual {v11}, Lcom/lenovo/channel/base/ShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Lcom/lenovo/content/base/ContentItem;->getId()Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v13 .. v16}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_14
:cond_6a
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v13
add-int/lit8 v13, v13, 0x1
goto :goto_48
:cond_71
invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z
move-result v13
if-nez v13, :cond_4
new-instance v5, Ljava/util/HashMap;
invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v13
invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_84
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v13
if-eqz v13, :cond_ac
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/util/Map$Entry;
invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/lenovo/content/base/ContentType;
invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v13
check-cast v13, Ljava/lang/Integer;
invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I
move-result v2
invoke-virtual {v6}, Lcom/lenovo/content/base/ContentType;->toString()Ljava/lang/String;
move-result-object v13
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v14
invoke-virtual {v5, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_84
:cond_ac
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;
move-result-object v13
move-object/from16 v0, p0
iget-object v14, v0, Lcom/lenovo/anyshare/sdk/internal/f;->a:Landroid/content/Context;
const-string/jumbo v15, "ReceiveFileTypeCount"
invoke-virtual {v13, v14, v15, v5}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;
move-result-object v13
move-object/from16 v0, p0
iget-object v14, v0, Lcom/lenovo/anyshare/sdk/internal/f;->a:Landroid/content/Context;
const-string/jumbo v15, "Receiver"
invoke-virtual {v13, v14, v15, v10}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;
move-result-object v13
move-object/from16 v0, p0
iget-object v14, v0, Lcom/lenovo/anyshare/sdk/internal/f;->a:Landroid/content/Context;
const-string/jumbo v15, "ReceiveFileCount"
invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I
move-result v16
invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v13 .. v16}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v8, v9}, Lcom/lenovo/anyshare/sdk/internal/a;->a(J)Ljava/lang/String;
move-result-object v7
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;
move-result-object v13
move-object/from16 v0, p0
iget-object v14, v0, Lcom/lenovo/anyshare/sdk/internal/f;->a:Landroid/content/Context;
const-string/jumbo v15, "ReceiveFileSize"
invoke-virtual {v13, v14, v15, v7}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_4
.end method
.method private b(Ljava/util/List;)V
.registers 14
const/4 v11, 0x1
invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Ljava/util/Collection;)V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_8
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_8b
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/lenovo/channel/base/ShareRecord;
invoke-virtual {v4}, Lcom/lenovo/channel/base/ShareRecord;->emptyContent()Z
move-result v6
if-eqz v6, :cond_3d
sget-object v6, Lcom/lenovo/channel/base/ShareRecord$Status;->COMPLETED:Lcom/lenovo/channel/base/ShareRecord$Status;
invoke-virtual {v4, v6}, Lcom/lenovo/channel/base/ShareRecord;->setStatus(Lcom/lenovo/channel/base/ShareRecord$Status;)V
iget-object v6, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
if-eqz v6, :cond_38
iget-object v6, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
invoke-virtual {v4}, Lcom/lenovo/channel/base/ShareRecord;->getType()Lcom/lenovo/channel/base/ShareRecord$ShareType;
move-result-object v7
invoke-virtual {v4}, Lcom/lenovo/channel/base/ShareRecord;->getShareId()Ljava/lang/String;
move-result-object v8
invoke-virtual {v4}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v9
invoke-virtual {v4}, Lcom/lenovo/channel/base/ShareRecord;->getStatus()Lcom/lenovo/channel/base/ShareRecord$Status;
move-result-object v10
invoke-interface {v6, v7, v8, v9, v10}, Lcom/lenovo/channel/base/IShareHistory;->updateShareRecordStatus(Lcom/lenovo/channel/base/ShareRecord$ShareType;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/channel/base/ShareRecord$Status;)V
:cond_38
const/4 v6, 0x0
invoke-direct {p0, v4, v11, v6}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/channel/base/ShareRecord;ZLcom/lenovo/channel/exception/TransmitException;)V
goto :goto_8
:cond_3d
new-instance v5, Lcom/lenovo/anyshare/sdk/internal/ad;
invoke-direct {v5, v11, v4}, Lcom/lenovo/anyshare/sdk/internal/ad;-><init>(ZLcom/lenovo/channel/base/ShareRecord;)V
iget-object v6, p0, Lcom/lenovo/anyshare/sdk/internal/f;->i:Lcom/lenovo/anyshare/sdk/internal/ac;
invoke-virtual {v6, v5}, Lcom/lenovo/anyshare/sdk/internal/ac;->b(Lcom/lenovo/anyshare/sdk/internal/cq;)V
iget-object v6, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
if-eqz v6, :cond_7e
invoke-virtual {v4}, Lcom/lenovo/channel/base/ShareRecord;->getRecordType()Lcom/lenovo/channel/base/ShareRecord$RecordType;
move-result-object v6
sget-object v7, Lcom/lenovo/channel/base/ShareRecord$RecordType;->ITEM:Lcom/lenovo/channel/base/ShareRecord$RecordType;
if-ne v6, v7, :cond_7e
move-object v1, v4
check-cast v1, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
iget-object v6, p0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v7
invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;
move-result-object v8
invoke-virtual {v8}, Lcom/lenovo/content/base/ContentItem;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v8
invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;
move-result-object v9
invoke-virtual {v9}, Lcom/lenovo/content/base/ContentItem;->getVersionedId()Ljava/lang/String;
move-result-object v9
invoke-interface {v6, v7, v8, v9}, Lcom/lenovo/channel/base/IShareHistory;->queryContentItem(Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentItem;
move-result-object v2
invoke-virtual {v2}, Lcom/lenovo/content/base/ContentItem;->isExist()Z
move-result v6
if-eqz v6, :cond_7e
sget-object v6, Lcom/lenovo/channel/base/ShareRecord$Status;->COMPLETED:Lcom/lenovo/channel/base/ShareRecord$Status;
invoke-virtual {v1, v6}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->setStatus(Lcom/lenovo/channel/base/ShareRecord$Status;)V
invoke-virtual {v1, v2}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->setItem(Lcom/lenovo/content/base/ContentItem;)V
:cond_7e
new-instance v3, Lcom/lenovo/anyshare/sdk/internal/ad;
const/4 v6, 0x0
invoke-direct {v3, v6, v4}, Lcom/lenovo/anyshare/sdk/internal/ad;-><init>(ZLcom/lenovo/channel/base/ShareRecord;)V
iget-object v6, p0, Lcom/lenovo/anyshare/sdk/internal/f;->i:Lcom/lenovo/anyshare/sdk/internal/ac;
invoke-virtual {v6, v3}, Lcom/lenovo/anyshare/sdk/internal/ac;->b(Lcom/lenovo/anyshare/sdk/internal/cq;)V
goto/16 :goto_8
:cond_8b
return-void
.end method
.method private b(Ljava/util/List;Ljava/lang/String;)V
.registers 22
move-object/from16 v0, p0
move-object/from16 v1, p2
invoke-direct {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/f;->b(Ljava/lang/String;)Ljava/util/List;
move-result-object v11
invoke-interface {v11}, Ljava/util/List;->isEmpty()Z
move-result v14
if-eqz v14, :cond_f
:cond_e
return-void
:cond_f
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-direct {v0, v1, v11}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
move-result-object v9
move-object/from16 v0, p0
invoke-direct {v0, v9}, Lcom/lenovo/anyshare/sdk/internal/f;->c(Ljava/util/List;)V
const/4 v8, 0x0
invoke-direct/range {p0 .. p1}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Ljava/util/List;)Z
move-result v14
if-eqz v14, :cond_85
new-instance v2, Lcom/lenovo/anyshare/sdk/internal/g$e;
invoke-direct {v2}, Lcom/lenovo/anyshare/sdk/internal/g$e;-><init>()V
new-instance v14, Ljava/util/ArrayList;
move-object/from16 v0, p1
invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-virtual {v2, v14}, Lcom/lenovo/anyshare/sdk/internal/g$e;->a(Ljava/util/List;)V
move-object v8, v2
:goto_33
move-object/from16 v0, p2
invoke-virtual {v8, v0}, Lcom/lenovo/anyshare/sdk/internal/n;->b(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/lenovo/anyshare/sdk/internal/f;->g:Lcom/lenovo/anyshare/sdk/internal/d;
invoke-virtual {v14}, Lcom/lenovo/anyshare/sdk/internal/d;->c()Lcom/lenovo/anyshare/sdk/internal/m;
move-result-object v7
if-eqz v7, :cond_45
invoke-interface {v7, v8}, Lcom/lenovo/anyshare/sdk/internal/m;->a(Lcom/lenovo/anyshare/sdk/internal/n;)V
:cond_45
invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_49
:goto_49
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v14
if-eqz v14, :cond_91
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v10
check-cast v10, Lcom/lenovo/channel/base/ShareRecord;
invoke-virtual {v10}, Lcom/lenovo/channel/base/ShareRecord;->emptyContent()Z
move-result v14
if-eqz v14, :cond_49
sget-object v14, Lcom/lenovo/channel/base/ShareRecord$Status;->COMPLETED:Lcom/lenovo/channel/base/ShareRecord$Status;
invoke-virtual {v10, v14}, Lcom/lenovo/channel/base/ShareRecord;->setStatus(Lcom/lenovo/channel/base/ShareRecord$Status;)V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
if-eqz v14, :cond_7d
move-object/from16 v0, p0
iget-object v14, v0, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
invoke-virtual {v10}, Lcom/lenovo/channel/base/ShareRecord;->getType()Lcom/lenovo/channel/base/ShareRecord$ShareType;
move-result-object v15
invoke-virtual {v10}, Lcom/lenovo/channel/base/ShareRecord;->getShareId()Ljava/lang/String;
move-result-object v16
invoke-virtual {v10}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v17
invoke-virtual {v10}, Lcom/lenovo/channel/base/ShareRecord;->getStatus()Lcom/lenovo/channel/base/ShareRecord$Status;
move-result-object v18
invoke-interface/range {v14 .. v18}, Lcom/lenovo/channel/base/IShareHistory;->updateShareRecordStatus(Lcom/lenovo/channel/base/ShareRecord$ShareType;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/channel/base/ShareRecord$Status;)V
:cond_7d
const/4 v14, 0x1
const/4 v15, 0x0
move-object/from16 v0, p0
invoke-direct {v0, v10, v14, v15}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/channel/base/ShareRecord;ZLcom/lenovo/channel/exception/TransmitException;)V
goto :goto_49
:cond_85
new-instance v5, Lcom/lenovo/anyshare/sdk/internal/g$d;
invoke-direct {v5}, Lcom/lenovo/anyshare/sdk/internal/g$d;-><init>()V
move-object/from16 v0, p1
invoke-virtual {v5, v0}, Lcom/lenovo/anyshare/sdk/internal/g$d;->a(Ljava/util/List;)V
move-object v8, v5
goto :goto_33
:cond_91
const/4 v3, 0x0
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->c()Ljava/util/List;
move-result-object v13
invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_9a
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v14
if-eqz v14, :cond_b3
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v12
check-cast v12, Lcom/lenovo/channel/base/UserInfo;
iget v14, v12, Lcom/lenovo/channel/base/UserInfo;->appVer:I
const v15, 0x3d5720
if-ge v14, v15, :cond_9a
iget v14, v12, Lcom/lenovo/channel/base/UserInfo;->appVer:I
const/4 v15, 0x1
if-eq v14, v15, :cond_9a
const/4 v3, 0x1
:cond_b3
if-eqz v3, :cond_e
invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_b9
:goto_b9
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v14
if-eqz v14, :cond_e
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v10
check-cast v10, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
new-instance v6, Lcom/lenovo/anyshare/sdk/internal/g$f;
invoke-direct {v6}, Lcom/lenovo/anyshare/sdk/internal/g$f;-><init>()V
invoke-virtual {v6, v10}, Lcom/lenovo/anyshare/sdk/internal/g$f;->a(Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;)V
move-object/from16 v0, p2
invoke-virtual {v6, v0}, Lcom/lenovo/anyshare/sdk/internal/g$f;->b(Ljava/lang/String;)V
if-eqz v7, :cond_b9
invoke-interface {v7, v6}, Lcom/lenovo/anyshare/sdk/internal/m;->a(Lcom/lenovo/anyshare/sdk/internal/n;)V
goto :goto_b9
.end method
.method static synthetic c(Lcom/lenovo/anyshare/sdk/internal/f;)Lcom/lenovo/anyshare/sdk/internal/d;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f;->g:Lcom/lenovo/anyshare/sdk/internal/d;
return-object v0
.end method
.method private c(Ljava/util/List;)V
.registers 7
const-string/jumbo v2, "ShareChannel"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "fire OnSent records count:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/f;->m:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_24
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_36
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/lenovo/channel/base/IShareSendListener;
:try_start_30
invoke-interface {v1, p1}, Lcom/lenovo/channel/base/IShareSendListener;->onSent(Ljava/util/Collection;)V
:try_end_33
.catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34
goto :goto_24
:catch_34
move-exception v2
goto :goto_24
:cond_36
return-void
.end method
.method public a()V
.registers 5
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f;->h:Lcom/lenovo/anyshare/sdk/internal/y;
if-eqz v1, :cond_b
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f;->h:Lcom/lenovo/anyshare/sdk/internal/y;
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/f;->f:Lcom/lenovo/anyshare/sdk/internal/y$a;
invoke-virtual {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/y;->b(Lcom/lenovo/anyshare/sdk/internal/y$a;)V
:cond_b
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f;->i:Lcom/lenovo/anyshare/sdk/internal/ac;
invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/ac;->a()V
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f;->d:Lcom/lenovo/channel/base/IUserListener;
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/i;->b(Lcom/lenovo/channel/base/IUserListener;)V
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f;->d:Lcom/lenovo/channel/base/IUserListener;
sget-object v2, Lcom/lenovo/channel/base/IUserListener$UserEventType;->OFFLINE:Lcom/lenovo/channel/base/IUserListener$UserEventType;
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->a()Lcom/lenovo/channel/base/UserInfo;
move-result-object v3
invoke-interface {v1, v2, v3}, Lcom/lenovo/channel/base/IUserListener;->onLocalUserChanged(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f;->g:Lcom/lenovo/anyshare/sdk/internal/d;
invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/d;->c()Lcom/lenovo/anyshare/sdk/internal/m;
move-result-object v0
if-eqz v0, :cond_2d
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f;->c:Lcom/lenovo/anyshare/sdk/internal/m$b;
invoke-interface {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/m;->b(Lcom/lenovo/anyshare/sdk/internal/m$b;)V
:cond_2d
return-void
.end method
.method public a(Lcom/lenovo/anyshare/sdk/internal/m;)V
.registers 6
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/f;->b(Lcom/lenovo/anyshare/sdk/internal/m;)V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f;->c:Lcom/lenovo/anyshare/sdk/internal/m$b;
invoke-interface {p1, v0}, Lcom/lenovo/anyshare/sdk/internal/m;->a(Lcom/lenovo/anyshare/sdk/internal/m$b;)V
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/y;
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f;->a:Landroid/content/Context;
const-string/jumbo v2, "download"
invoke-direct {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/y;-><init>(Landroid/content/Context;Ljava/lang/String;)V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f;->h:Lcom/lenovo/anyshare/sdk/internal/y;
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f;->h:Lcom/lenovo/anyshare/sdk/internal/y;
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f;->f:Lcom/lenovo/anyshare/sdk/internal/y$a;
invoke-virtual {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/y;->a(Lcom/lenovo/anyshare/sdk/internal/y$a;)V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f;->g:Lcom/lenovo/anyshare/sdk/internal/d;
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/f;->h:Lcom/lenovo/anyshare/sdk/internal/y;
invoke-virtual {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/d;->a(Lcom/lenovo/httpserver/HttpServlet;)V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f;->g:Lcom/lenovo/anyshare/sdk/internal/d;
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/x;
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/f;->a:Landroid/content/Context;
const-string/jumbo v3, "apps"
invoke-direct {v1, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/x;-><init>(Landroid/content/Context;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/d;->a(Lcom/lenovo/httpserver/HttpServlet;)V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f;->g:Lcom/lenovo/anyshare/sdk/internal/d;
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/z;
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/f;->a:Landroid/content/Context;
invoke-direct {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/z;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/d;->a(Lcom/lenovo/httpserver/HttpServlet;)V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f;->d:Lcom/lenovo/channel/base/IUserListener;
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/i;->a(Lcom/lenovo/channel/base/IUserListener;)V
return-void
.end method
.method public a(Lcom/lenovo/channel/base/IShareReceiveListener;)V
.registers 3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f;->l:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public a(Lcom/lenovo/channel/base/IShareSendListener;)V
.registers 3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f;->m:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public a(Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;Ljava/lang/String;)V
.registers 4
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/f$2;
invoke-direct {v0, p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/f$2;-><init>(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;Ljava/lang/String;)V
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/be;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 6
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f;->i:Lcom/lenovo/anyshare/sdk/internal/ac;
invoke-virtual {v3, p1}, Lcom/lenovo/anyshare/sdk/internal/ac;->a(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/cq;
move-result-object v2
check-cast v2, Lcom/lenovo/anyshare/sdk/internal/ad;
if-nez v2, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f;->i:Lcom/lenovo/anyshare/sdk/internal/ac;
invoke-virtual {v3, v2}, Lcom/lenovo/anyshare/sdk/internal/ac;->c(Lcom/lenovo/anyshare/sdk/internal/cq;)V
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f;->g:Lcom/lenovo/anyshare/sdk/internal/d;
invoke-virtual {v3}, Lcom/lenovo/anyshare/sdk/internal/d;->c()Lcom/lenovo/anyshare/sdk/internal/m;
move-result-object v0
if-eqz v0, :cond_2d
:try_start_18
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/g$a;
sget-object v3, Lcom/lenovo/channel/base/ShareRecord$ShareType;->RECEIVE:Lcom/lenovo/channel/base/ShareRecord$ShareType;
invoke-direct {v1, v3, p1}, Lcom/lenovo/anyshare/sdk/internal/g$a;-><init>(Lcom/lenovo/channel/base/ShareRecord$ShareType;Ljava/lang/String;)V
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/ad;->d()Lcom/lenovo/channel/base/ShareRecord;
move-result-object v3
invoke-virtual {v3}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/lenovo/anyshare/sdk/internal/g$a;->b(Ljava/lang/String;)V
invoke-interface {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/m;->a(Lcom/lenovo/anyshare/sdk/internal/n;)V
:try_end_2d
.catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2d} :catch_3d
:goto_2d
:cond_2d
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f;->i:Lcom/lenovo/anyshare/sdk/internal/ac;
invoke-virtual {v3, p1}, Lcom/lenovo/anyshare/sdk/internal/ac;->a(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/cq;
move-result-object v2
check-cast v2, Lcom/lenovo/anyshare/sdk/internal/ad;
if-eqz v2, :cond_a
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f;->i:Lcom/lenovo/anyshare/sdk/internal/ac;
invoke-virtual {v3, v2}, Lcom/lenovo/anyshare/sdk/internal/ac;->c(Lcom/lenovo/anyshare/sdk/internal/cq;)V
goto :goto_a
:catch_3d
move-exception v3
goto :goto_2d
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/f;->g:Lcom/lenovo/anyshare/sdk/internal/d;
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/d;->c()Lcom/lenovo/anyshare/sdk/internal/m;
move-result-object v0
if-eqz v0, :cond_15
:try_start_8
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/g$a;
sget-object v2, Lcom/lenovo/channel/base/ShareRecord$ShareType;->SEND:Lcom/lenovo/channel/base/ShareRecord$ShareType;
invoke-direct {v1, v2, p1}, Lcom/lenovo/anyshare/sdk/internal/g$a;-><init>(Lcom/lenovo/channel/base/ShareRecord$ShareType;Ljava/lang/String;)V
invoke-virtual {v1, p2}, Lcom/lenovo/anyshare/sdk/internal/g$a;->b(Ljava/lang/String;)V
invoke-interface {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/m;->a(Lcom/lenovo/anyshare/sdk/internal/n;)V
:try_end_15
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_16
:goto_15
:cond_15
return-void
:catch_16
move-exception v2
goto :goto_15
.end method
.method public a(Ljava/util/List;Ljava/lang/String;)V
.registers 5
if-eqz p1, :cond_1a
invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_1a
const/4 v0, 0x1
:goto_9
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/f$1;
invoke-direct {v1, p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/f$1;-><init>(Lcom/lenovo/anyshare/sdk/internal/f;Ljava/util/List;Ljava/lang/String;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
return-void
:cond_1a
const/4 v0, 0x0
goto :goto_9
.end method
.method public b(Lcom/lenovo/channel/base/IShareReceiveListener;)V
.registers 3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f;->l:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method public b(Lcom/lenovo/channel/base/IShareSendListener;)V
.registers 3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f;->m:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
return-void
.end method