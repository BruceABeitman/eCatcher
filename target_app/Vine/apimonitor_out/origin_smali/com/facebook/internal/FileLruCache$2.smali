.class Lcom/facebook/internal/FileLruCache$2;
.super Ljava/lang/Object;
.source "FileLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FileLruCache;->postTrim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/FileLruCache;


# direct methods
.method constructor <init>(Lcom/facebook/internal/FileLruCache;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/internal/FileLruCache$2;->this$0:Lcom/facebook/internal/FileLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$2;->this$0:Lcom/facebook/internal/FileLruCache;

    #calls: Lcom/facebook/internal/FileLruCache;->trim()V
    invoke-static {v0}, Lcom/facebook/internal/FileLruCache;->access$100(Lcom/facebook/internal/FileLruCache;)V

    return-void
.end method
