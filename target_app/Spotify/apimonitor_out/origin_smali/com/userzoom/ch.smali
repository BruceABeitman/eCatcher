.class public abstract Lcom/userzoom/ch;
.super Lcom/userzoom/cb;


# static fields
.field private static h:[I


# instance fields
.field protected final c:Lcom/userzoom/cd;

.field protected d:[I

.field protected e:I

.field protected f:Lcom/userzoom/o;

.field protected g:Lcom/userzoom/ca;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/userzoom/cc;->a()[I

    move-result-object v0

    sput-object v0, Lcom/userzoom/ch;->h:[I

    return-void
.end method

.method public constructor <init>(Lcom/userzoom/cd;I)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/userzoom/cb;-><init>(I)V

    sget-object v0, Lcom/userzoom/ch;->h:[I

    iput-object v0, p0, Lcom/userzoom/ch;->d:[I

    sget-object v0, Lcom/userzoom/G;->a:Lcom/userzoom/s;

    iput-object v0, p0, Lcom/userzoom/ch;->g:Lcom/userzoom/ca;

    iput-object p1, p0, Lcom/userzoom/ch;->c:Lcom/userzoom/cd;

    sget-object v0, Lcom/userzoom/f;->g:Lcom/userzoom/f;

    invoke-virtual {p0, v0}, Lcom/userzoom/ch;->a(Lcom/userzoom/f;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0x7f

    iput v0, p0, Lcom/userzoom/ch;->e:I

    :cond_19
    return-void
.end method


# virtual methods
.method public final a()Lcom/userzoom/by;
    .registers 2

    const/16 v0, 0x7f

    iput v0, p0, Lcom/userzoom/ch;->e:I

    return-object p0
.end method

.method public final a(Lcom/userzoom/ca;)Lcom/userzoom/by;
    .registers 2

    iput-object p1, p0, Lcom/userzoom/ch;->g:Lcom/userzoom/ca;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/userzoom/ch;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/userzoom/ch;->b(Ljava/lang/String;)V

    return-void
.end method
