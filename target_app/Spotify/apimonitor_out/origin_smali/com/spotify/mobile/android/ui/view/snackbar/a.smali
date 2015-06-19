.class public abstract Lcom/spotify/mobile/android/ui/view/snackbar/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/view/snackbar/d;


# instance fields
.field private final a:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;

.field private b:Z

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/snackbar/a;->a:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/a;->b:Z

    iput p2, p0, Lcom/spotify/mobile/android/ui/view/snackbar/a;->c:I

    iput-object p3, p0, Lcom/spotify/mobile/android/ui/view/snackbar/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/a;->c:I

    return v0
.end method

.method public final a(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/a;->b:Z

    if-eq v0, p1, :cond_9

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/a;->a:Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/snackbar/SnackBar;->a()V

    :cond_9
    iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/view/snackbar/a;->b:Z

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/a;->b:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/snackbar/a;->d:Ljava/lang/String;

    return-object v0
.end method
