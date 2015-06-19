.class Lcom/glympse/android/controls/ClearableEditText$1;
.super Ljava/lang/Object;
.source "ClearableEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/glympse/android/controls/ClearableEditText;


# direct methods
.method constructor <init>(Lcom/glympse/android/controls/ClearableEditText;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/controls/ClearableEditText$1;->this$0:Lcom/glympse/android/controls/ClearableEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/controls/ClearableEditText$1;->this$0:Lcom/glympse/android/controls/ClearableEditText;

    #getter for: Lcom/glympse/android/controls/ClearableEditText;->_editText:Lcom/glympse/android/controls/EditText;
    invoke-static {v0}, Lcom/glympse/android/controls/ClearableEditText;->access$000(Lcom/glympse/android/controls/ClearableEditText;)Lcom/glympse/android/controls/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/glympse/android/controls/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
