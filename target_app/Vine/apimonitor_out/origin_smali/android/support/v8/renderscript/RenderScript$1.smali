.class Landroid/support/v8/renderscript/RenderScript$1;
.super Landroid/renderscript/RenderScript$RSMessageHandler;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v8/renderscript/RenderScript;->setMessageHandler(Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v8/renderscript/RenderScript;


# direct methods
.method constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v8/renderscript/RenderScript$1;->this$0:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {p0}, Landroid/renderscript/RenderScript$RSMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript$1;->this$0:Landroid/support/v8/renderscript/RenderScript;

    iget-object v0, v0, Landroid/support/v8/renderscript/RenderScript;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    iget-object v1, p0, Landroid/support/v8/renderscript/RenderScript$1;->mData:[I

    iput-object v1, v0, Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;->mData:[I

    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript$1;->this$0:Landroid/support/v8/renderscript/RenderScript;

    iget-object v0, v0, Landroid/support/v8/renderscript/RenderScript;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    iget v1, p0, Landroid/support/v8/renderscript/RenderScript$1;->mID:I

    iput v1, v0, Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;->mID:I

    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript$1;->this$0:Landroid/support/v8/renderscript/RenderScript;

    iget-object v0, v0, Landroid/support/v8/renderscript/RenderScript;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    iget v1, p0, Landroid/support/v8/renderscript/RenderScript$1;->mLength:I

    iput v1, v0, Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;->mLength:I

    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript$1;->this$0:Landroid/support/v8/renderscript/RenderScript;

    iget-object v0, v0, Landroid/support/v8/renderscript/RenderScript;->mMessageCallback:Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript$RSMessageHandler;->run()V

    return-void
.end method
