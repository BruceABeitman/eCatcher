.class Lcom/fsck/k9/preferences/Editor$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/preferences/Editor;->commitChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/preferences/Editor;


# direct methods
.method constructor <init>(Lcom/fsck/k9/preferences/Editor;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/preferences/Editor$1;->this$0:Lcom/fsck/k9/preferences/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v6, p0, Lcom/fsck/k9/preferences/Editor$1;->this$0:Lcom/fsck/k9/preferences/Editor;

    #getter for: Lcom/fsck/k9/preferences/Editor;->removeAll:Z
    invoke-static {v6}, Lcom/fsck/k9/preferences/Editor;->access$000(Lcom/fsck/k9/preferences/Editor;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/fsck/k9/preferences/Editor$1;->this$0:Lcom/fsck/k9/preferences/Editor;

    #getter for: Lcom/fsck/k9/preferences/Editor;->storage:Lcom/fsck/k9/preferences/Storage;
    invoke-static {v6}, Lcom/fsck/k9/preferences/Editor;->access$100(Lcom/fsck/k9/preferences/Editor;)Lcom/fsck/k9/preferences/Storage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fsck/k9/preferences/Storage;->removeAll()V

    :cond_11
    iget-object v6, p0, Lcom/fsck/k9/preferences/Editor$1;->this$0:Lcom/fsck/k9/preferences/Editor;

    #getter for: Lcom/fsck/k9/preferences/Editor;->removals:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/fsck/k9/preferences/Editor;->access$200(Lcom/fsck/k9/preferences/Editor;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/fsck/k9/preferences/Editor$1;->this$0:Lcom/fsck/k9/preferences/Editor;

    #getter for: Lcom/fsck/k9/preferences/Editor;->storage:Lcom/fsck/k9/preferences/Storage;
    invoke-static {v6}, Lcom/fsck/k9/preferences/Editor;->access$100(Lcom/fsck/k9/preferences/Editor;)Lcom/fsck/k9/preferences/Storage;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/fsck/k9/preferences/Storage;->remove(Ljava/lang/String;)V

    goto :goto_1b

    :cond_31
    iget-object v6, p0, Lcom/fsck/k9/preferences/Editor$1;->this$0:Lcom/fsck/k9/preferences/Editor;

    #getter for: Lcom/fsck/k9/preferences/Editor;->changes:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/fsck/k9/preferences/Editor;->access$300(Lcom/fsck/k9/preferences/Editor;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3f
    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/fsck/k9/preferences/Editor$1;->this$0:Lcom/fsck/k9/preferences/Editor;

    iget-object v6, v6, Lcom/fsck/k9/preferences/Editor;->snapshot:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/fsck/k9/preferences/Editor$1;->this$0:Lcom/fsck/k9/preferences/Editor;

    #getter for: Lcom/fsck/k9/preferences/Editor;->removeAll:Z
    invoke-static {v6}, Lcom/fsck/k9/preferences/Editor;->access$000(Lcom/fsck/k9/preferences/Editor;)Z

    move-result v6

    if-nez v6, :cond_7c

    iget-object v6, p0, Lcom/fsck/k9/preferences/Editor$1;->this$0:Lcom/fsck/k9/preferences/Editor;

    #getter for: Lcom/fsck/k9/preferences/Editor;->removals:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/fsck/k9/preferences/Editor;->access$200(Lcom/fsck/k9/preferences/Editor;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7c

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3f

    :cond_7c
    iget-object v6, p0, Lcom/fsck/k9/preferences/Editor$1;->this$0:Lcom/fsck/k9/preferences/Editor;

    #getter for: Lcom/fsck/k9/preferences/Editor;->storage:Lcom/fsck/k9/preferences/Storage;
    invoke-static {v6}, Lcom/fsck/k9/preferences/Editor;->access$100(Lcom/fsck/k9/preferences/Editor;)Lcom/fsck/k9/preferences/Storage;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Lcom/fsck/k9/preferences/Storage;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    :cond_86
    return-void
.end method
