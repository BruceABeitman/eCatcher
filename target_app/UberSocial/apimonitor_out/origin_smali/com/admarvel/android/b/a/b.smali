.class public Lcom/admarvel/android/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/b/a/b;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/admarvel/android/b/a/b;->a:Ljava/util/ArrayList;

    return-void
.end method
