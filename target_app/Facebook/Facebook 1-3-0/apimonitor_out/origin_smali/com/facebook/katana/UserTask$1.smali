.class Lcom/facebook/katana/UserTask$1;
.super Ljava/lang/Object;
.source "UserTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/UserTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/UserTask;


# direct methods
.method constructor <init>(Lcom/facebook/katana/UserTask;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/UserTask$1;->this$0:Lcom/facebook/katana/UserTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/UserTask$1;->this$0:Lcom/facebook/katana/UserTask;

    invoke-virtual {v0}, Lcom/facebook/katana/UserTask;->onPostExecute()V

    return-void
.end method
