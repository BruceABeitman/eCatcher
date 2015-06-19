.class public final Lcom/lenovo/sharesdk/ShareManager;
.super Ljava/lang/Object;
.source "ShareManager.java"
.field private static a:Landroid/content/Context;
.field private static b:Lcom/lenovo/anyshare/sdk/internal/d;
.field private static c:Lcom/lenovo/anyshare/sdk/internal/f;
.field private static d:Lcom/lenovo/anyshare/sdk/internal/cm;
.field private static e:Ljava/util/Random;
.field private static f:Ljava/util/concurrent/atomic/AtomicBoolean;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x0
sput-object v0, Lcom/lenovo/sharesdk/ShareManager;->b:Lcom/lenovo/anyshare/sdk/internal/d;
sput-object v0, Lcom/lenovo/sharesdk/ShareManager;->c:Lcom/lenovo/anyshare/sdk/internal/f;
sput-object v0, Lcom/lenovo/sharesdk/ShareManager;->d:Lcom/lenovo/anyshare/sdk/internal/cm;
new-instance v0, Ljava/util/Random;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V
sput-object v0, Lcom/lenovo/sharesdk/ShareManager;->e:Ljava/util/Random;
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x0
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
sput-object v0, Lcom/lenovo/sharesdk/ShareManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(JJ)J
.registers 12
sget-object v4, Lcom/lenovo/sharesdk/ShareManager;->e:Ljava/util/Random;
invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D
move-result-wide v0
sub-long v4, p2, p0
long-to-double v4, v4
mul-double/2addr v4, v0
long-to-double v6, p0
add-double v2, v4, v6
invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J
move-result-wide v4
return-wide v4
.end method
.method static a()V
.registers 1
invoke-static {}, Lcom/lenovo/sharesdk/ShareManager;->b()V
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;
move-result-object v0
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/a;->c()V
return-void
.end method
.method static a(Landroid/content/Context;)V
.registers 10
const/4 v2, 0x1
sget-object v0, Lcom/lenovo/sharesdk/ShareManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x0
invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
move-result v0
if-nez v0, :cond_b
:goto_a
return-void
:cond_b
sput-object p0, Lcom/lenovo/sharesdk/ShareManager;->a:Landroid/content/Context;
sput-boolean v2, Lcom/lenovo/anyshare/sdk/internal/a;->b:Z
sget-object v0, Lcom/lenovo/sharesdk/ShareManager;->a:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_1e
const-string/jumbo v3, "unknown"
:cond_1e
const-string/jumbo v5, ""
:try_start_21
sget-object v0, Lcom/lenovo/sharesdk/ShareManager;->a:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
sget-object v1, Lcom/lenovo/sharesdk/ShareManager;->a:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const/16 v2, 0x4000
invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v8
if-eqz v8, :cond_37
iget-object v5, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
:goto_37
:cond_37
:try_end_37
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_37} :catch_6d
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_89
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "_unknown"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
:goto_51
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/c;
const-string/jumbo v2, "XCY2XE7BUEIB"
const v4, 0x3d580a
move-object v1, p0
invoke-direct/range {v0 .. v5}, Lcom/lenovo/anyshare/sdk/internal/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;
move-result-object v0
invoke-virtual {v0, p0, v6}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/util/Collection;)V
goto :goto_a
:catch_6d
move-exception v7
const-string/jumbo v0, "SDK.ShareManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "not find package info with:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_37
:cond_89
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
goto :goto_51
.end method
.method static a(Ljava/lang/String;)V
.registers 3
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;
move-result-object v0
sget-object v1, Lcom/lenovo/sharesdk/ShareManager;->a:Landroid/content/Context;
invoke-virtual {v0, v1, p0}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public static acceptUser(Ljava/lang/String;Z)V
.registers 4
sget-object v0, Lcom/lenovo/sharesdk/ShareManager;->b:Lcom/lenovo/anyshare/sdk/internal/d;
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/d;->b()Lcom/lenovo/anyshare/sdk/internal/m$a;
move-result-object v0
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/m$a;->a:Lcom/lenovo/anyshare/sdk/internal/m$a;
if-ne v0, v1, :cond_14
const/4 v0, 0x1
:goto_b
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
sget-object v0, Lcom/lenovo/sharesdk/ShareManager;->b:Lcom/lenovo/anyshare/sdk/internal/d;
invoke-virtual {v0, p0, p1}, Lcom/lenovo/anyshare/sdk/internal/d;->a(Ljava/lang/String;Z)V
return-void
:cond_14
const/4 v0, 0x0
goto :goto_b
.end method
.method public static addRecieveListener(Lcom/lenovo/channel/base/IShareReceiveListener;)V
.registers 2
sget-object v0, Lcom/lenovo/sharesdk/ShareManager;->c:Lcom/lenovo/anyshare/sdk/internal/f;
invoke-virtual {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/channel/base/IShareReceiveListener;)V
return-void
.end method
.method public static addSendListener(Lcom/lenovo/channel/base/IShareSendListener;)V
.registers 2
sget-object v0, Lcom/lenovo/sharesdk/ShareManager;->c:Lcom/lenovo/anyshare/sdk/internal/f;
invoke-virtual {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/channel/base/IShareSendListener;)V
return-void
.end method
.method public static addServlet(Lcom/lenovo/httpserver/HttpServlet;)V
.registers 2
sget-object v0, Lcom/lenovo/sharesdk/ShareManager;->b:Lcom/lenovo/anyshare/sdk/internal/d;
invoke-virtual {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/d;->a(Lcom/lenovo/httpserver/HttpServlet;)V
return-void
.end method
.method public static addUserListener(Lcom/lenovo/channel/base/IUserListener;)V
.registers 1
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/i;->a(Lcom/lenovo/channel/base/IUserListener;)V
return-void
.end method
.method private static b()V
.registers 17
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;
move-result-object v11
invoke-virtual {v11}, Lcom/lenovo/anyshare/sdk/internal/a;->d()I
move-result v11
if-lez v11, :cond_b
:cond_a
:goto_a
return-void
:cond_b
const-wide/32 v0, 0x5265c00
new-instance v10, Lcom/lenovo/anyshare/sdk/internal/bc;
sget-object v11, Lcom/lenovo/sharesdk/ShareManager;->a:Landroid/content/Context;
const-string/jumbo v12, "de"
invoke-direct {v10, v11, v12}, Lcom/lenovo/anyshare/sdk/internal/bc;-><init>(Landroid/content/Context;Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v8
const-string/jumbo v11, "fs"
const-wide/16 v12, 0x0
invoke-virtual {v10, v11, v12, v13}, Lcom/lenovo/anyshare/sdk/internal/bc;->a(Ljava/lang/String;J)J
move-result-wide v6
const-wide/16 v11, 0x0
cmp-long v11, v6, v11
if-nez v11, :cond_3e
const-wide/32 v11, 0xf731400
const-wide/32 v13, 0x240c8400
invoke-static {v11, v12, v13, v14}, Lcom/lenovo/sharesdk/ShareManager;->a(JJ)J
move-result-wide v11
add-long v6, v8, v11
const-string/jumbo v11, "fs"
invoke-virtual {v10, v11, v6, v7}, Lcom/lenovo/anyshare/sdk/internal/bc;->b(Ljava/lang/String;J)V
goto :goto_a
:cond_3e
const-string/jumbo v11, "et"
const-wide/16 v12, 0x0
invoke-virtual {v10, v11, v12, v13}, Lcom/lenovo/anyshare/sdk/internal/bc;->a(Ljava/lang/String;J)J
move-result-wide v4
const-string/jumbo v11, "ct"
const-wide/16 v12, 0x0
invoke-virtual {v10, v11, v12, v13}, Lcom/lenovo/anyshare/sdk/internal/bc;->a(Ljava/lang/String;J)J
move-result-wide v2
cmp-long v11, v8, v6
if-lez v11, :cond_a
cmp-long v11, v8, v4
if-lez v11, :cond_a
cmp-long v11, v8, v2
if-lez v11, :cond_a
sget-object v11, Lcom/lenovo/sharesdk/ShareManager;->e:Ljava/util/Random;
invoke-virtual {v11}, Ljava/util/Random;->nextDouble()D
move-result-wide v11
sub-long v13, v8, v6
long-to-double v13, v13
const-wide v15, 0x41e34fd900000000L
div-double/2addr v13, v15
cmpg-double v11, v11, v13
if-gez v11, :cond_90
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;
move-result-object v11
sget-object v12, Lcom/lenovo/sharesdk/ShareManager;->a:Landroid/content/Context;
const-string/jumbo v13, "InitSuccess"
invoke-virtual {v11, v12, v13}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;)V
const-string/jumbo v11, "et"
const-wide v12, 0x90321000L
const-wide v14, 0x240c84000L
invoke-static {v12, v13, v14, v15}, Lcom/lenovo/sharesdk/ShareManager;->a(JJ)J
move-result-wide v12
add-long/2addr v12, v8
invoke-virtual {v10, v11, v12, v13}, Lcom/lenovo/anyshare/sdk/internal/bc;->b(Ljava/lang/String;J)V
:cond_90
const-string/jumbo v11, "ct"
const-wide/32 v12, 0x5265c00
add-long/2addr v12, v8
invoke-virtual {v10, v11, v12, v13}, Lcom/lenovo/anyshare/sdk/internal/bc;->b(Ljava/lang/String;J)V
goto/16 :goto_a
.end method
.method public static cancelShareRecord(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
sget-object v0, Lcom/lenovo/sharesdk/ShareManager;->c:Lcom/lenovo/anyshare/sdk/internal/f;
invoke-virtual {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Ljava/lang/String;)V
sget-object v0, Lcom/lenovo/sharesdk/ShareManager;->c:Lcom/lenovo/anyshare/sdk/internal/f;
invoke-virtual {v0, p1, p0}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;
move-result-object v0
sget-object v1, Lcom/lenovo/sharesdk/ShareManager;->a:Landroid/content/Context;
const-string/jumbo v2, "CancelShare"
invoke-virtual {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public static connectToServer(Ljava/lang/String;)V
.registers 7
sget-object v2, Lcom/lenovo/sharesdk/ShareManager;->b:Lcom/lenovo/anyshare/sdk/internal/d;
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/d;->b()Lcom/lenovo/anyshare/sdk/internal/m$a;
move-result-object v2
if-nez v2, :cond_3f
const/4 v2, 0x1
:goto_9
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/q;
sget-object v2, Lcom/lenovo/sharesdk/ShareManager;->b:Lcom/lenovo/anyshare/sdk/internal/d;
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/d;->a()I
move-result v2
invoke-direct {v1, p0, v2}, Lcom/lenovo/anyshare/sdk/internal/q;-><init>(Ljava/lang/String;I)V
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/m$a;->b:Lcom/lenovo/anyshare/sdk/internal/m$a;
sget-object v3, Lcom/lenovo/sharesdk/ShareManager;->a:Landroid/content/Context;
invoke-static {v2, v3, v1}, Lcom/lenovo/anyshare/sdk/internal/e;->a(Lcom/lenovo/anyshare/sdk/internal/m$a;Landroid/content/Context;Lcom/lenovo/anyshare/sdk/internal/q;)Lcom/lenovo/anyshare/sdk/internal/m;
move-result-object v0
sget-object v2, Lcom/lenovo/sharesdk/ShareManager;->c:Lcom/lenovo/anyshare/sdk/internal/f;
invoke-virtual {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/m;)V
sget-object v2, Lcom/lenovo/sharesdk/ShareManager;->b:Lcom/lenovo/anyshare/sdk/internal/d;
invoke-virtual {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/d;->a(Lcom/lenovo/anyshare/sdk/internal/m;)V
sget-object v2, Lcom/lenovo/sharesdk/ShareManager;->b:Lcom/lenovo/anyshare/sdk/internal/d;
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/d;->d()V
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;
move-result-object v2
sget-object v3, Lcom/lenovo/sharesdk/ShareManager;->a:Landroid/content/Context;
const-string/jumbo v4, "ConnectToServer"
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->b()Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
return-void
:cond_3f
const/4 v2, 0x0
goto :goto_9
.end method
.method public static createCollectionShareRecord(Landroid/content/Context;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
.registers 7
invoke-static {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/bx;->b(Landroid/content/Context;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
move-result-object v2
if-nez v2, :cond_8
const/4 v1, 0x0
:goto_7
return-object v1
:cond_8
invoke-static {v2}, Lcom/lenovo/channel/base/ShareCollection;->create(Lcom/lenovo/content/base/ContentContainer;)Lcom/lenovo/channel/base/ShareCollection;
move-result-object v0
sget-object v3, Lcom/lenovo/channel/base/ShareRecord$ShareType;->SEND:Lcom/lenovo/channel/base/ShareRecord$ShareType;
invoke-static {v3, v0}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->create(Lcom/lenovo/channel/base/ShareRecord$ShareType;Lcom/lenovo/channel/base/ShareCollection;)Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
move-result-object v1
goto :goto_7
.end method
.method public static createShareRecord(Landroid/content/Context;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
.registers 5
invoke-static {p0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/bx;->a(Landroid/content/Context;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentItem;
move-result-object v0
if-nez v0, :cond_8
const/4 v1, 0x0
:goto_7
return-object v1
:cond_8
sget-object v1, Lcom/lenovo/channel/base/ShareRecord$ShareType;->SEND:Lcom/lenovo/channel/base/ShareRecord$ShareType;
invoke-static {v1, v0}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->create(Lcom/lenovo/channel/base/ShareRecord$ShareType;Lcom/lenovo/content/base/ContentItem;)Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
move-result-object v1
goto :goto_7
.end method
.method public static createShareRecords(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
.registers 8
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_9
:goto_9
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_27
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/util/Pair;
iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;
check-cast v4, Lcom/lenovo/content/base/ContentType;
iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;
check-cast v5, Ljava/lang/String;
invoke-static {p0, v4, v5}, Lcom/lenovo/sharesdk/ShareManager;->createShareRecord(Landroid/content/Context;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
move-result-object v2
if-eqz v2, :cond_9
invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_9
:cond_27
return-object v3
.end method
.method public static destroy()V
.registers 2
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/bi;->a()Lcom/lenovo/anyshare/sdk/internal/bi;
move-result-object v0
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/bi;->b()V
sget-object v0, Lcom/lenovo/sharesdk/ShareManager;->f:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
sget-object v0, Lcom/lenovo/sharesdk/ShareManager;->d:Lcom/lenovo/anyshare/sdk/internal/cm;
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/cm;->b()V
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->b()V
return-void
.end method
.method public static disconnectFromServer()V
.registers 4
sget-object v0, Lcom/lenovo/sharesdk/ShareManager;->c:Lcom/lenovo/anyshare/sdk/internal/f;
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/f;->a()V
sget-object v0, Lcom/lenovo/sharesdk/ShareManager;->b:Lcom/lenovo/anyshare/sdk/internal/d;
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/d;->e()V
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;
move-result-object v0
sget-object v1, Lcom/lenovo/sharesdk/ShareManager;->a:Landroid/content/Context;
const-string/jumbo v2, "DisconnectFromServer"
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->b()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static getLocalUser()Lcom/lenovo/channel/base/UserInfo;
.registers 1
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->a()Lcom/lenovo/channel/base/UserInfo;
move-result-object v0
return-object v0
.end method
.method public static getUser(Ljava/lang/String;)Lcom/lenovo/channel/base/UserInfo;
.registers 2
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/i;->b(Ljava/lang/String;)Lcom/lenovo/channel/base/UserInfo;
move-result-object v0
return-object v0
.end method
.method public static init(Landroid/content/Context;Ljava/lang/String;I)V
.registers 15
sput-object p0, Lcom/lenovo/sharesdk/ShareManager;->a:Landroid/content/Context;
sget-object v1, Lcom/lenovo/sharesdk/ShareManager;->a:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/aw;->a(Landroid/content/Context;)V
invoke-static {p0}, Lcom/lenovo/sharesdk/ShareManager;->a(Landroid/content/Context;)V
sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I
const-string/jumbo v8, "android"
sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/i;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/lenovo/sharesdk/ShareManager;->a:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
move-object v10, v3
invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_3d
const-string/jumbo v10, "unknown"
:cond_3d
const v4, 0x3d580a
move-object v1, p1
move v2, p2
invoke-static/range {v0 .. v10}, Lcom/lenovo/anyshare/sdk/internal/i;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
sget-object v1, Lcom/lenovo/sharesdk/ShareManager;->a:Landroid/content/Context;
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/j;->a(Landroid/content/Context;)V
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/bi;->a()Lcom/lenovo/anyshare/sdk/internal/bi;
move-result-object v1
sget-object v2, Lcom/lenovo/sharesdk/ShareManager;->a:Landroid/content/Context;
invoke-virtual {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/bi;->a(Landroid/content/Context;)V
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/d;
sget-object v2, Lcom/lenovo/sharesdk/ShareManager;->a:Landroid/content/Context;
invoke-direct {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/d;-><init>(Landroid/content/Context;)V
sput-object v1, Lcom/lenovo/sharesdk/ShareManager;->b:Lcom/lenovo/anyshare/sdk/internal/d;
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/f;
sget-object v2, Lcom/lenovo/sharesdk/ShareManager;->a:Landroid/content/Context;
sget-object v4, Lcom/lenovo/sharesdk/ShareManager;->b:Lcom/lenovo/anyshare/sdk/internal/d;
const/4 v11, 0x0
invoke-direct {v1, v2, v4, v11}, Lcom/lenovo/anyshare/sdk/internal/f;-><init>(Landroid/content/Context;Lcom/lenovo/anyshare/sdk/internal/d;Lcom/lenovo/channel/base/IShareHistory;)V
sput-object v1, Lcom/lenovo/sharesdk/ShareManager;->c:Lcom/lenovo/anyshare/sdk/internal/f;
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/cm;
sget-object v2, Lcom/lenovo/sharesdk/ShareManager;->a:Landroid/content/Context;
invoke-direct {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/cm;-><init>(Landroid/content/Context;)V
sput-object v1, Lcom/lenovo/sharesdk/ShareManager;->d:Lcom/lenovo/anyshare/sdk/internal/cm;
sget-object v1, Lcom/lenovo/sharesdk/ShareManager;->d:Lcom/lenovo/anyshare/sdk/internal/cm;
invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/cm;->a()V
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;
move-result-object v1
const-string/jumbo v2, "InitSuccess"
invoke-virtual {v1, p0, v2}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public static listOnlineUsers()Ljava/util/List;
.registers 1
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->c()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public static removeRecieveListener(Lcom/lenovo/channel/base/IShareReceiveListener;)V
.registers 2
sget-object v0, Lcom/lenovo/sharesdk/ShareManager;->c:Lcom/lenovo/anyshare/sdk/internal/f;
invoke-virtual {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/f;->b(Lcom/lenovo/channel/base/IShareReceiveListener;)V
return-void
.end method
.method public static removeSendListener(Lcom/lenovo/channel/base/IShareSendListener;)V
.registers 2
sget-object v0, Lcom/lenovo/sharesdk/ShareManager;->c:Lcom/lenovo/anyshare/sdk/internal/f;
invoke-virtual {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/f;->b(Lcom/lenovo/channel/base/IShareSendListener;)V
return-void
.end method
.method public static removeUserListener(Lcom/lenovo/channel/base/IUserListener;)V
.registers 1
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/i;->b(Lcom/lenovo/channel/base/IUserListener;)V
return-void
.end method
.method public static sendCollection(Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;Ljava/lang/String;)V
.registers 3
sget-object v0, Lcom/lenovo/sharesdk/ShareManager;->c:Lcom/lenovo/anyshare/sdk/internal/f;
invoke-virtual {v0, p0, p1}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;Ljava/lang/String;)V
return-void
.end method
.method public static sendItems(Ljava/util/List;Ljava/lang/String;)V
.registers 3
sget-object v0, Lcom/lenovo/sharesdk/ShareManager;->c:Lcom/lenovo/anyshare/sdk/internal/f;
invoke-virtual {v0, p0, p1}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Ljava/util/List;Ljava/lang/String;)V
return-void
.end method
.method public static setConfigParams(II)V
.registers 3
sget-object v0, Lcom/lenovo/sharesdk/ShareManager;->b:Lcom/lenovo/anyshare/sdk/internal/d;
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
sget-object v0, Lcom/lenovo/sharesdk/ShareManager;->b:Lcom/lenovo/anyshare/sdk/internal/d;
invoke-virtual {v0, p0}, Lcom/lenovo/anyshare/sdk/internal/d;->b(I)V
sget-object v0, Lcom/lenovo/sharesdk/ShareManager;->b:Lcom/lenovo/anyshare/sdk/internal/d;
invoke-virtual {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/d;->a(I)V
return-void
.end method
.method public static setLocalUser(Ljava/lang/String;I)V
.registers 2
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/i;->a(Ljava/lang/String;)V
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/i;->a(I)V
return-void
.end method
.method public static setRemoteFileStore(Lcom/lenovo/channel/base/IRemoteFileStore;)V
.registers 1
invoke-static {p0}, Lcom/lenovo/anyshare/sdk/internal/k;->a(Lcom/lenovo/channel/base/IRemoteFileStore;)V
return-void
.end method
.method public static startServer()V
.registers 6
sget-object v2, Lcom/lenovo/sharesdk/ShareManager;->b:Lcom/lenovo/anyshare/sdk/internal/d;
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/d;->b()Lcom/lenovo/anyshare/sdk/internal/m$a;
move-result-object v2
if-nez v2, :cond_40
const/4 v2, 0x1
:goto_9
invoke-static {v2}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/q;
const/4 v2, 0x0
sget-object v3, Lcom/lenovo/sharesdk/ShareManager;->b:Lcom/lenovo/anyshare/sdk/internal/d;
invoke-virtual {v3}, Lcom/lenovo/anyshare/sdk/internal/d;->a()I
move-result v3
invoke-direct {v1, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/q;-><init>(Ljava/lang/String;I)V
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/m$a;->a:Lcom/lenovo/anyshare/sdk/internal/m$a;
sget-object v3, Lcom/lenovo/sharesdk/ShareManager;->a:Landroid/content/Context;
invoke-static {v2, v3, v1}, Lcom/lenovo/anyshare/sdk/internal/e;->a(Lcom/lenovo/anyshare/sdk/internal/m$a;Landroid/content/Context;Lcom/lenovo/anyshare/sdk/internal/q;)Lcom/lenovo/anyshare/sdk/internal/m;
move-result-object v0
sget-object v2, Lcom/lenovo/sharesdk/ShareManager;->c:Lcom/lenovo/anyshare/sdk/internal/f;
invoke-virtual {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/m;)V
sget-object v2, Lcom/lenovo/sharesdk/ShareManager;->b:Lcom/lenovo/anyshare/sdk/internal/d;
invoke-virtual {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/d;->a(Lcom/lenovo/anyshare/sdk/internal/m;)V
sget-object v2, Lcom/lenovo/sharesdk/ShareManager;->b:Lcom/lenovo/anyshare/sdk/internal/d;
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/d;->d()V
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;
move-result-object v2
sget-object v3, Lcom/lenovo/sharesdk/ShareManager;->a:Landroid/content/Context;
const-string/jumbo v4, "StartServer"
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->b()Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
return-void
:cond_40
const/4 v2, 0x0
goto :goto_9
.end method
.method public static stopServer()V
.registers 4
sget-object v0, Lcom/lenovo/sharesdk/ShareManager;->c:Lcom/lenovo/anyshare/sdk/internal/f;
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/f;->a()V
sget-object v0, Lcom/lenovo/sharesdk/ShareManager;->b:Lcom/lenovo/anyshare/sdk/internal/d;
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/d;->e()V
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/a;->a()Lcom/lenovo/anyshare/sdk/internal/a;
move-result-object v0
sget-object v1, Lcom/lenovo/sharesdk/ShareManager;->a:Landroid/content/Context;
const-string/jumbo v2, "StopServer"
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->b()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method