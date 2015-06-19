.class final Lcom/bbm/h/aa;
.super Ljava/lang/Object;
.source "AddContactsFragment.java"

# interfaces
.implements Lcom/bbm/ui/b/ab;


# instance fields
.field final synthetic a:Lcom/bbm/h/m;


# direct methods
.method constructor <init>(Lcom/bbm/h/m;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/h/aa;->a:Lcom/bbm/h/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/h/aa;->a:Lcom/bbm/h/m;

    invoke-virtual {v1}, Lcom/bbm/h/m;->getActivity()Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/bbm/h/aq;->a()V

    return-void
.end method
