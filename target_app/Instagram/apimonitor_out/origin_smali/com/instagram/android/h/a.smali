.class public final Lcom/instagram/android/h/a;
.super Ljava/lang/Object;
.source "CheckUsernameResponse.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/h/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/h/a;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/android/h/a;->b:Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/h/a;->c:Ljava/lang/String;

    return-void
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/android/h/a;->b:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/h/a;->c:Ljava/lang/String;

    return-object v0
.end method
