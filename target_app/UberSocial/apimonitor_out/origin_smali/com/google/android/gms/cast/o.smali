.class public Lcom/google/android/gms/cast/o;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/cast/n;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Content ID cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/cast/n;

    invoke-direct {v0, p1}, Lcom/google/android/gms/cast/n;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/o;->a:Lcom/google/android/gms/cast/n;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/cast/n;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/cast/o;->a:Lcom/google/android/gms/cast/n;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/n;->g()V

    iget-object v0, p0, Lcom/google/android/gms/cast/o;->a:Lcom/google/android/gms/cast/n;

    return-object v0
.end method

.method public a(I)Lcom/google/android/gms/cast/o;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/cast/o;->a:Lcom/google/android/gms/cast/n;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/n;->a(I)V

    return-object p0
.end method

.method public a(J)Lcom/google/android/gms/cast/o;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/cast/o;->a:Lcom/google/android/gms/cast/n;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/n;->a(J)V

    return-object p0
.end method

.method public a(Lcom/google/android/gms/cast/p;)Lcom/google/android/gms/cast/o;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/cast/o;->a:Lcom/google/android/gms/cast/n;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/n;->a(Lcom/google/android/gms/cast/p;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/android/gms/cast/o;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/cast/o;->a:Lcom/google/android/gms/cast/n;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/n;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/o;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/cast/o;->a:Lcom/google/android/gms/cast/n;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/n;->a(Lorg/json/JSONObject;)V

    return-object p0
.end method
