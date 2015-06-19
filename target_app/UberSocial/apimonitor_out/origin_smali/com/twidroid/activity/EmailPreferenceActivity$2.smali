.class Lcom/twidroid/activity/EmailPreferenceActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/EmailPreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/EmailPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/EmailPreferenceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/EmailPreferenceActivity$2;->a:Lcom/twidroid/activity/EmailPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/twidroid/activity/EmailPreferenceActivity$2;->a:Lcom/twidroid/activity/EmailPreferenceActivity;

    iget-object v0, v0, Lcom/twidroid/activity/EmailPreferenceActivity;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_10
    const/4 v0, 0x1

    return v0

    :cond_12
    iget-object v0, p0, Lcom/twidroid/activity/EmailPreferenceActivity$2;->a:Lcom/twidroid/activity/EmailPreferenceActivity;

    iget-object v0, v0, Lcom/twidroid/activity/EmailPreferenceActivity;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10
.end method
