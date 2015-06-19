.class final Lcom/bbm/h/u;
.super Ljava/lang/Object;
.source "AddContactsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/h/m;


# direct methods
.method constructor <init>(Lcom/bbm/h/m;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/h/u;->a:Lcom/bbm/h/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/h/u;->a:Lcom/bbm/h/m;

    invoke-static {v0}, Lcom/bbm/h/m;->g(Lcom/bbm/h/m;)V

    return-void
.end method
