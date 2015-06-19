.class final Lcom/bbm/ui/activities/ace;
.super Ljava/lang/Object;
.source "ProfileDefaultIconActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ProfileDefaultIconActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ProfileDefaultIconActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ace;->a:Lcom/bbm/ui/activities/ProfileDefaultIconActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "headerActionBar Negative Button Clicked"

    const-class v1, Lcom/bbm/ui/activities/ProfileDefaultIconActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ace;->a:Lcom/bbm/ui/activities/ProfileDefaultIconActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ProfileDefaultIconActivity;->finish()V

    return-void
.end method
