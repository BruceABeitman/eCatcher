.class Lcom/lenovo/anyshare/sdk/internal/cv$a;
.super Ljava/lang/Object;
.source "Tone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/anyshare/sdk/internal/cv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:S

.field public b:S

.field public c:S

.field public d:B


# direct methods
.method public constructor <init>(SSSB)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/lenovo/anyshare/sdk/internal/cv$a;->a:S

    iput-short p2, p0, Lcom/lenovo/anyshare/sdk/internal/cv$a;->b:S

    iput-short p3, p0, Lcom/lenovo/anyshare/sdk/internal/cv$a;->c:S

    iput-byte p4, p0, Lcom/lenovo/anyshare/sdk/internal/cv$a;->d:B

    return-void
.end method
