.class Landroid/support/v7/app/ActionBarImplICS$OnNavigationListenerWrapper;
.super Ljava/lang/Object;
.source "ActionBarImplICS.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarImplICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OnNavigationListenerWrapper"
.end annotation


# instance fields
.field private final mWrappedListener:Landroid/support/v7/app/ActionBar$OnNavigationListener;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ActionBar$OnNavigationListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplICS$OnNavigationListenerWrapper;->mWrappedListener:Landroid/support/v7/app/ActionBar$OnNavigationListener;

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .registers 5

    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$OnNavigationListenerWrapper;->mWrappedListener:Landroid/support/v7/app/ActionBar$OnNavigationListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v7/app/ActionBar$OnNavigationListener;->onNavigationItemSelected(IJ)Z

    move-result v0

    return v0
.end method
