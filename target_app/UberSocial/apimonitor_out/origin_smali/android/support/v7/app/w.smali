.class Landroid/support/v7/app/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;


# instance fields
.field final a:Landroid/support/v7/app/b;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/app/w;->a:Landroid/support/v7/app/b;

    return-void
.end method


# virtual methods
.method public onMenuVisibilityChanged(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/w;->a:Landroid/support/v7/app/b;

    invoke-interface {v0, p1}, Landroid/support/v7/app/b;->a(Z)V

    return-void
.end method
