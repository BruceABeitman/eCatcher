.class Lcom/facebook/katana/FeedbackActivity$6;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/FeedbackActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/FeedbackActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/FeedbackActivity$6;->this$0:Lcom/facebook/katana/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/katana/FeedbackActivity$6;->this$0:Lcom/facebook/katana/FeedbackActivity;

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Lcom/facebook/katana/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
