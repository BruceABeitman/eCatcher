.class public Lco/vine/android/service/VineAuthenticationService;
.super Landroid/app/Service;
.source "VineAuthenticationService.java"


# instance fields
.field private mAuthenticator:Lco/vine/android/VineAccountAuthenticator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lco/vine/android/service/VineAuthenticationService;->mAuthenticator:Lco/vine/android/VineAccountAuthenticator;

    invoke-virtual {v0}, Lco/vine/android/VineAccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lco/vine/android/VineAccountAuthenticator;

    invoke-direct {v0, p0}, Lco/vine/android/VineAccountAuthenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lco/vine/android/service/VineAuthenticationService;->mAuthenticator:Lco/vine/android/VineAccountAuthenticator;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/service/VineAuthenticationService;->mAuthenticator:Lco/vine/android/VineAccountAuthenticator;

    return-void
.end method
