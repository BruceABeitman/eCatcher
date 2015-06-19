.class Lcom/twidroid/activity/MutedUsers$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/MutedUsers;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ui/a/d;

.field final synthetic b:Lcom/twidroid/activity/MutedUsers;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/MutedUsers;Lcom/twidroid/ui/a/d;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/activity/MutedUsers$1;->b:Lcom/twidroid/activity/MutedUsers;

    iput-object p2, p0, Lcom/twidroid/activity/MutedUsers$1;->a:Lcom/twidroid/ui/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    if-eqz p2, :cond_18

    iget-object v0, p0, Lcom/twidroid/activity/MutedUsers$1;->b:Lcom/twidroid/activity/MutedUsers;

    iget-object v0, v0, Lcom/twidroid/activity/MutedUsers;->f:Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f0c01ea

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    iget-object v0, p0, Lcom/twidroid/activity/MutedUsers$1;->b:Lcom/twidroid/activity/MutedUsers;

    iget-object v0, v0, Lcom/twidroid/activity/MutedUsers;->f:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/twidroid/activity/MutedUsers$1;->b:Lcom/twidroid/activity/MutedUsers;

    iget-object v1, v1, Lcom/twidroid/activity/MutedUsers;->c:Lcom/twidroid/ui/a/e;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/twidroid/activity/MutedUsers$1;->b:Lcom/twidroid/activity/MutedUsers;

    iget-object v0, v0, Lcom/twidroid/activity/MutedUsers;->f:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/twidroid/activity/MutedUsers$1;->a:Lcom/twidroid/ui/a/d;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/twidroid/activity/MutedUsers$1;->b:Lcom/twidroid/activity/MutedUsers;

    iget-object v0, v0, Lcom/twidroid/activity/MutedUsers;->f:Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f0c01e8

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    goto :goto_17
.end method
