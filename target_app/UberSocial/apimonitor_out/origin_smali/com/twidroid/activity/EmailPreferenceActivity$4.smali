.class Lcom/twidroid/activity/EmailPreferenceActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/EmailPreferenceActivity;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/EmailPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/EmailPreferenceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/EmailPreferenceActivity$4;->a:Lcom/twidroid/activity/EmailPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/activity/EmailPreferenceActivity$4;->a:Lcom/twidroid/activity/EmailPreferenceActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twidroid/activity/EmailPreferenceActivity;->a(Lcom/twidroid/activity/EmailPreferenceActivity;Z)Z

    return-void
.end method
