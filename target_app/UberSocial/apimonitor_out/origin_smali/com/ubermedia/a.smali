.class public Lcom/ubermedia/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z = true

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ubermedia/a;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
