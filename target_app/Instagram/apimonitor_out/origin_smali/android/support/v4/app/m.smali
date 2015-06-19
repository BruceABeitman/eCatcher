.class final Landroid/support/v4/app/m;
.super Ljava/lang/Object;
.source "FragmentActivity.java"

# interfaces
.implements Landroid/support/v4/app/q;


# instance fields
.field final synthetic a:Landroid/support/v4/app/k;


# direct methods
.method constructor <init>(Landroid/support/v4/app/k;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/app/m;->a:Landroid/support/v4/app/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/m;->a:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
