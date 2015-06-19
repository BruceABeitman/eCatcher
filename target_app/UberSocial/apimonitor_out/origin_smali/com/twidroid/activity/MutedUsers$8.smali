.class Lcom/twidroid/activity/MutedUsers$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/MutedUsers;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/MutedUsers;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/MutedUsers;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/MutedUsers$8;->a:Lcom/twidroid/activity/MutedUsers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/activity/MutedUsers$8;->a:Lcom/twidroid/activity/MutedUsers;

    invoke-static {v0}, Lcom/twidroid/activity/MutedUsers;->b(Lcom/twidroid/activity/MutedUsers;)V

    iget-object v0, p0, Lcom/twidroid/activity/MutedUsers$8;->a:Lcom/twidroid/activity/MutedUsers;

    iget-object v0, v0, Lcom/twidroid/activity/MutedUsers;->f:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
