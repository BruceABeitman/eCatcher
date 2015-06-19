.class Lco/vine/android/util/UrlResourceCache$FetchRunnable;
.super Ljava/lang/Object;
.source "UrlResourceCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/util/UrlResourceCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchRunnable"
.end annotation


# instance fields
.field private final mOwnerId:J

.field private final mWorkQueue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Lco/vine/android/util/UrlResourceCache$PendingRes;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lco/vine/android/util/UrlResourceCache;


# direct methods
.method public constructor <init>(Lco/vine/android/util/UrlResourceCache;JLjava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap",
            "<TK;",
            "Lco/vine/android/util/UrlResourceCache$PendingRes;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lco/vine/android/util/UrlResourceCache$FetchRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lco/vine/android/util/UrlResourceCache$FetchRunnable;->mOwnerId:J

    iput-object p4, p0, Lco/vine/android/util/UrlResourceCache$FetchRunnable;->mWorkQueue:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    move-object/from16 v0, p0

    iget-object v9, v0, Lco/vine/android/util/UrlResourceCache$FetchRunnable;->mWorkQueue:Ljava/util/HashMap;

    sget-boolean v2, Lco/vine/android/util/UrlResourceCache;->LOGGABLE:Z

    if-eqz v2, :cond_24

    const-string v2, "ResourceCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Queueing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ec

    new-instance v15, Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v15, v2}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/util/UrlResourceCache$FetchRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;

    iget-object v2, v2, Lco/vine/android/util/UrlResourceCache;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;

    move-result-object v8

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_45
    :goto_45
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_dc

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lco/vine/android/util/UrlResourceCache$PendingRes;

    iget-object v6, v13, Lco/vine/android/util/UrlResourceCache$PendingRes;->url:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/util/UrlResourceCache$FetchRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lco/vine/android/util/UrlResourceCache$FetchRunnable;->mOwnerId:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lco/vine/android/util/UrlResourceCache;->loadResource(JLjava/lang/Object;Ljava/lang/String;)Lco/vine/android/util/UrlResource;

    move-result-object v14

    if-eqz v14, :cond_6f

    invoke-virtual {v15, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    :cond_6f
    sget-boolean v2, Lco/vine/android/util/UrlResourceCache;->LOGGABLE:Z

    if-eqz v2, :cond_8b

    const-string v2, "ResourceCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    invoke-static {v6}, Lco/vine/android/util/Util;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v16

    if-eqz v16, :cond_45

    new-instance v1, Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/util/UrlResourceCache$FetchRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lco/vine/android/util/UrlResourceCache$FetchRunnable;->mOwnerId:J

    iget-boolean v7, v13, Lco/vine/android/util/UrlResourceCache$PendingRes;->persist:Z

    invoke-direct/range {v1 .. v7}, Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;-><init>(Lco/vine/android/util/UrlResourceCache;JLjava/lang/Object;Ljava/lang/String;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/util/UrlResourceCache$FetchRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;

    iget-object v3, v3, Lco/vine/android/util/UrlResourceCache;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lco/vine/android/client/VineAPI;->getInstance(Landroid/content/Context;)Lco/vine/android/client/VineAPI;

    move-result-object v3

    invoke-static {v8, v2, v3, v1}, Lco/vine/android/network/HttpOperation;->createResourceGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;

    move-result-object v2

    invoke-virtual {v2}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;

    move-result-object v12

    invoke-virtual {v12}, Lco/vine/android/network/HttpOperation;->isOK()Z

    move-result v2

    if-eqz v2, :cond_c1

    invoke-virtual {v1}, Lco/vine/android/util/UrlResourceCache$ResourceHttpOperationReader;->getResultResource()Lco/vine/android/util/UrlResource;

    move-result-object v14

    :cond_c1
    if-nez v14, :cond_d7

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/util/UrlResourceCache$FetchRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v6, v3}, Lco/vine/android/util/UrlResourceCache;->instantiateResource(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lco/vine/android/util/UrlResource;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v17, 0xea60

    add-long v2, v2, v17

    iput-wide v2, v14, Lco/vine/android/util/UrlResource;->nextRequestTime:J

    :cond_d7
    invoke-virtual {v15, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_45

    :cond_dc
    invoke-static {}, Lco/vine/android/util/UrlResourceCache;->access$000()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lco/vine/android/util/UrlResourceCache$ResultRunnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/util/UrlResourceCache$FetchRunnable;->this$0:Lco/vine/android/util/UrlResourceCache;

    invoke-direct {v3, v4, v15}, Lco/vine/android/util/UrlResourceCache$ResultRunnable;-><init>(Lco/vine/android/util/UrlResourceCache;Ljava/util/HashMap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_ec
    return-void
.end method
