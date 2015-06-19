.class public final Lcom/spotify/android/paste/app/a;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/android/paste/app/a;Landroid/widget/Button;)Landroid/widget/Button;
    .registers 2

    iput-object p1, p0, Lcom/spotify/android/paste/app/a;->b:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic b(Lcom/spotify/android/paste/app/a;Landroid/widget/Button;)Landroid/widget/Button;
    .registers 2

    iput-object p1, p0, Lcom/spotify/android/paste/app/a;->a:Landroid/widget/Button;

    return-object p1
.end method
