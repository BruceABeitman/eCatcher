.class Landroid/support/v7/widget/SearchView$7;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    #getter for: Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/view/View;
    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->access$400(Landroid/support/v7/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    #calls: Landroid/support/v7/widget/SearchView;->onSearchClicked()V
    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->access$500(Landroid/support/v7/widget/SearchView;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    #getter for: Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;
    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->access$600(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_1c

    iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    #calls: Landroid/support/v7/widget/SearchView;->onCloseClicked()V
    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->access$700(Landroid/support/v7/widget/SearchView;)V

    goto :goto_d

    :cond_1c
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    #getter for: Landroid/support/v7/widget/SearchView;->mSubmitButton:Landroid/view/View;
    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->access$800(Landroid/support/v7/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_2a

    iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    #calls: Landroid/support/v7/widget/SearchView;->onSubmitQuery()V
    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->access$900(Landroid/support/v7/widget/SearchView;)V

    goto :goto_d

    :cond_2a
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    #getter for: Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/view/View;
    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->access$1000(Landroid/support/v7/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_38

    iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    #calls: Landroid/support/v7/widget/SearchView;->onVoiceClicked()V
    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->access$1100(Landroid/support/v7/widget/SearchView;)V

    goto :goto_d

    :cond_38
    iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    #getter for: Landroid/support/v7/widget/SearchView;->mQueryTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->access$1200(Landroid/support/v7/widget/SearchView;)Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;

    #calls: Landroid/support/v7/widget/SearchView;->forceSuggestionQuery()V
    invoke-static {v0}, Landroid/support/v7/widget/SearchView;->access$1300(Landroid/support/v7/widget/SearchView;)V

    goto :goto_d
.end method
