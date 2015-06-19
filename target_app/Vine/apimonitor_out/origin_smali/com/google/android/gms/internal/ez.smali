.class public Lcom/google/android/gms/internal/ez;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ez$a;
    }
.end annotation


# instance fields
.field protected final lL:Lcom/google/android/gms/internal/ey;

.field private final lq:Ljava/lang/Object;

.field private mQ:Lcom/google/android/gms/internal/bb;

.field private na:Lcom/google/android/gms/internal/bg;

.field private nb:Lcom/google/android/gms/internal/be;

.field private pL:Lcom/google/android/gms/internal/ez$a;

.field private final sE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bd;",
            ">;"
        }
    .end annotation
.end field

.field private sF:Lcom/google/android/gms/internal/u;

.field private sG:Lcom/google/android/gms/internal/cj;

.field private sH:Z

.field private sI:Z

.field private sJ:Lcom/google/android/gms/internal/cm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ey;Z)V
    .registers 4

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ez;->sE:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ez;->lq:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ez;->sH:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ez;->lL:Lcom/google/android/gms/internal/ey;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ez;->sI:Z

    return-void
.end method

.method private static c(Landroid/net/Uri;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private d(Landroid/net/Uri;)V
    .registers 8

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ez;->sE:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bd;

    if-eqz v0, :cond_70

    invoke-static {p1}, Lcom/google/android/gms/internal/ep;->b(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/google/android/gms/internal/ev;->p(I)Z

    move-result v3

    if-eqz v3, :cond_6a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received GMSG: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ev;->C(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ev;->C(Ljava/lang/String;)V

    goto :goto_37

    :cond_6a
    iget-object v1, p0, Lcom/google/android/gms/internal/ez;->lL:Lcom/google/android/gms/internal/ey;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/bd;->b(Lcom/google/android/gms/internal/ey;Ljava/util/Map;)V

    :goto_6f
    return-void

    :cond_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No GMSG handler found for GMSG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->C(Ljava/lang/String;)V

    goto :goto_6f
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/cf;)V
    .registers 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ez;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bZ()Z

    move-result v1

    new-instance v0, Lcom/google/android/gms/internal/ci;

    if-eqz v1, :cond_28

    iget-object v2, p0, Lcom/google/android/gms/internal/ez;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ey;->Q()Lcom/google/android/gms/internal/am;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/am;->md:Z

    if-nez v2, :cond_28

    move-object v2, v3

    :goto_16
    if-eqz v1, :cond_2b

    :goto_18
    iget-object v4, p0, Lcom/google/android/gms/internal/ez;->sJ:Lcom/google/android/gms/internal/cm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ez;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ey;->bY()Lcom/google/android/gms/internal/ew;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ci;-><init>(Lcom/google/android/gms/internal/cf;Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/cj;Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/internal/ew;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ez;->a(Lcom/google/android/gms/internal/ci;)V

    return-void

    :cond_28
    iget-object v2, p0, Lcom/google/android/gms/internal/ez;->sF:Lcom/google/android/gms/internal/u;

    goto :goto_16

    :cond_2b
    iget-object v3, p0, Lcom/google/android/gms/internal/ez;->sG:Lcom/google/android/gms/internal/cj;

    goto :goto_18
.end method

.method protected a(Lcom/google/android/gms/internal/ci;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ez;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/cg;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ci;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ez$a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ez;->pL:Lcom/google/android/gms/internal/ez$a;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/cj;Lcom/google/android/gms/internal/bb;Lcom/google/android/gms/internal/cm;ZLcom/google/android/gms/internal/be;)V
    .registers 9

    const-string v0, "/appEvent"

    new-instance v1, Lcom/google/android/gms/internal/ba;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/ba;-><init>(Lcom/google/android/gms/internal/bb;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ez;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bd;)V

    const-string v0, "/canOpenURLs"

    sget-object v1, Lcom/google/android/gms/internal/bc;->mS:Lcom/google/android/gms/internal/bd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ez;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bd;)V

    const-string v0, "/click"

    sget-object v1, Lcom/google/android/gms/internal/bc;->mT:Lcom/google/android/gms/internal/bd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ez;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bd;)V

    const-string v0, "/close"

    sget-object v1, Lcom/google/android/gms/internal/bc;->mU:Lcom/google/android/gms/internal/bd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ez;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bd;)V

    const-string v0, "/customClose"

    sget-object v1, Lcom/google/android/gms/internal/bc;->mV:Lcom/google/android/gms/internal/bd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ez;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bd;)V

    const-string v0, "/httpTrack"

    sget-object v1, Lcom/google/android/gms/internal/bc;->mW:Lcom/google/android/gms/internal/bd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ez;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bd;)V

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/bc;->mX:Lcom/google/android/gms/internal/bd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ez;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bd;)V

    const-string v0, "/open"

    new-instance v1, Lcom/google/android/gms/internal/bh;

    invoke-direct {v1, p6}, Lcom/google/android/gms/internal/bh;-><init>(Lcom/google/android/gms/internal/be;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ez;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bd;)V

    const-string v0, "/touch"

    sget-object v1, Lcom/google/android/gms/internal/bc;->mY:Lcom/google/android/gms/internal/bd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ez;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bd;)V

    const-string v0, "/video"

    sget-object v1, Lcom/google/android/gms/internal/bc;->mZ:Lcom/google/android/gms/internal/bd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ez;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bd;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ez;->sF:Lcom/google/android/gms/internal/u;

    iput-object p2, p0, Lcom/google/android/gms/internal/ez;->sG:Lcom/google/android/gms/internal/cj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ez;->mQ:Lcom/google/android/gms/internal/bb;

    iput-object p6, p0, Lcom/google/android/gms/internal/ez;->nb:Lcom/google/android/gms/internal/be;

    iput-object p4, p0, Lcom/google/android/gms/internal/ez;->sJ:Lcom/google/android/gms/internal/cm;

    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/ez;->r(Z)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/cj;Lcom/google/android/gms/internal/bb;Lcom/google/android/gms/internal/cm;ZLcom/google/android/gms/internal/be;Lcom/google/android/gms/internal/bg;)V
    .registers 10

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/internal/ez;->a(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/cj;Lcom/google/android/gms/internal/bb;Lcom/google/android/gms/internal/cm;ZLcom/google/android/gms/internal/be;)V

    const-string v0, "/setInterstitialProperties"

    new-instance v1, Lcom/google/android/gms/internal/bf;

    invoke-direct {v1, p7}, Lcom/google/android/gms/internal/bf;-><init>(Lcom/google/android/gms/internal/bg;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ez;->a(Ljava/lang/String;Lcom/google/android/gms/internal/bd;)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ez;->na:Lcom/google/android/gms/internal/bg;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/bd;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ez;->sE:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(ZI)V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ez;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bZ()Z

    move-result v1

    new-instance v0, Lcom/google/android/gms/internal/ci;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/google/android/gms/internal/ez;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ey;->Q()Lcom/google/android/gms/internal/am;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/am;->md:Z

    if-nez v1, :cond_2a

    const/4 v1, 0x0

    :goto_15
    iget-object v2, p0, Lcom/google/android/gms/internal/ez;->sG:Lcom/google/android/gms/internal/cj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ez;->sJ:Lcom/google/android/gms/internal/cm;

    iget-object v4, p0, Lcom/google/android/gms/internal/ez;->lL:Lcom/google/android/gms/internal/ey;

    iget-object v5, p0, Lcom/google/android/gms/internal/ez;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ey;->bY()Lcom/google/android/gms/internal/ew;

    move-result-object v7

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ci;-><init>(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/cj;Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/internal/ey;ZILcom/google/android/gms/internal/ew;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ez;->a(Lcom/google/android/gms/internal/ci;)V

    return-void

    :cond_2a
    iget-object v1, p0, Lcom/google/android/gms/internal/ez;->sF:Lcom/google/android/gms/internal/u;

    goto :goto_15
.end method

.method public final a(ZILjava/lang/String;)V
    .registers 15

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ez;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bZ()Z

    move-result v3

    new-instance v0, Lcom/google/android/gms/internal/ci;

    if-eqz v3, :cond_30

    iget-object v1, p0, Lcom/google/android/gms/internal/ez;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ey;->Q()Lcom/google/android/gms/internal/am;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/am;->md:Z

    if-nez v1, :cond_30

    move-object v1, v2

    :goto_16
    if-eqz v3, :cond_33

    :goto_18
    iget-object v3, p0, Lcom/google/android/gms/internal/ez;->mQ:Lcom/google/android/gms/internal/bb;

    iget-object v4, p0, Lcom/google/android/gms/internal/ez;->sJ:Lcom/google/android/gms/internal/cm;

    iget-object v5, p0, Lcom/google/android/gms/internal/ez;->lL:Lcom/google/android/gms/internal/ey;

    iget-object v6, p0, Lcom/google/android/gms/internal/ez;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ey;->bY()Lcom/google/android/gms/internal/ew;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gms/internal/ez;->nb:Lcom/google/android/gms/internal/be;

    move v6, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ci;-><init>(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/cj;Lcom/google/android/gms/internal/bb;Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/internal/ey;ZILjava/lang/String;Lcom/google/android/gms/internal/ew;Lcom/google/android/gms/internal/be;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ez;->a(Lcom/google/android/gms/internal/ci;)V

    return-void

    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/ez;->sF:Lcom/google/android/gms/internal/u;

    goto :goto_16

    :cond_33
    iget-object v2, p0, Lcom/google/android/gms/internal/ez;->sG:Lcom/google/android/gms/internal/cj;

    goto :goto_18
.end method

.method public final a(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 17

    iget-object v0, p0, Lcom/google/android/gms/internal/ez;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bZ()Z

    move-result v2

    new-instance v0, Lcom/google/android/gms/internal/ci;

    if-eqz v2, :cond_32

    iget-object v1, p0, Lcom/google/android/gms/internal/ez;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ey;->Q()Lcom/google/android/gms/internal/am;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/am;->md:Z

    if-nez v1, :cond_32

    const/4 v1, 0x0

    :goto_15
    if-eqz v2, :cond_35

    const/4 v2, 0x0

    :goto_18
    iget-object v3, p0, Lcom/google/android/gms/internal/ez;->mQ:Lcom/google/android/gms/internal/bb;

    iget-object v4, p0, Lcom/google/android/gms/internal/ez;->sJ:Lcom/google/android/gms/internal/cm;

    iget-object v5, p0, Lcom/google/android/gms/internal/ez;->lL:Lcom/google/android/gms/internal/ey;

    iget-object v6, p0, Lcom/google/android/gms/internal/ez;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ey;->bY()Lcom/google/android/gms/internal/ew;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/gms/internal/ez;->nb:Lcom/google/android/gms/internal/be;

    move v6, p1

    move v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ci;-><init>(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/cj;Lcom/google/android/gms/internal/bb;Lcom/google/android/gms/internal/cm;Lcom/google/android/gms/internal/ey;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ew;Lcom/google/android/gms/internal/be;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ez;->a(Lcom/google/android/gms/internal/ci;)V

    return-void

    :cond_32
    iget-object v1, p0, Lcom/google/android/gms/internal/ez;->sF:Lcom/google/android/gms/internal/u;

    goto :goto_15

    :cond_35
    iget-object v2, p0, Lcom/google/android/gms/internal/ez;->sG:Lcom/google/android/gms/internal/cj;

    goto :goto_18
.end method

.method public final aN()V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/ez;->lq:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ez;->sH:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ez;->sI:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ez;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bV()Lcom/google/android/gms/internal/cg;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/google/android/gms/internal/eu;->bR()Z

    move-result v2

    if-nez v2, :cond_23

    sget-object v2, Lcom/google/android/gms/internal/eu;->ss:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/ez$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ez$1;-><init>(Lcom/google/android/gms/internal/ez;Lcom/google/android/gms/internal/cg;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_21
    :goto_21
    monitor-exit v1

    return-void

    :cond_23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cg;->aN()V

    goto :goto_21

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public ce()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ez;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ez;->sI:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading resource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->C(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, "mobileads.google.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ez;->d(Landroid/net/Uri;)V

    :cond_35
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ez;->pL:Lcom/google/android/gms/internal/ez$a;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ez;->pL:Lcom/google/android/gms/internal/ez$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ez;->lL:Lcom/google/android/gms/internal/ey;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ez$a;->a(Lcom/google/android/gms/internal/ey;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ez;->pL:Lcom/google/android/gms/internal/ez$a;

    :cond_e
    return-void
.end method

.method public final r(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ez;->sH:Z

    return-void
.end method

.method public final reset()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ez;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ez;->sE:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ez;->sF:Lcom/google/android/gms/internal/u;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ez;->sG:Lcom/google/android/gms/internal/cj;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ez;->pL:Lcom/google/android/gms/internal/ez$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ez;->mQ:Lcom/google/android/gms/internal/bb;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ez;->sH:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ez;->sI:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ez;->nb:Lcom/google/android/gms/internal/be;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ez;->sJ:Lcom/google/android/gms/internal/cm;

    monitor-exit v1

    return-void

    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 11

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdWebView shouldOverrideUrlLoading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->C(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, "mobileads.google.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ez;->d(Landroid/net/Uri;)V

    :goto_36
    const/4 v0, 0x1

    :goto_37
    return v0

    :cond_38
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ez;->sH:Z

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/google/android/gms/internal/ez;->lL:Lcom/google/android/gms/internal/ey;

    if-ne p1, v1, :cond_4b

    invoke-static {v0}, Lcom/google/android/gms/internal/ez;->c(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_37

    :cond_4b
    iget-object v1, p0, Lcom/google/android/gms/internal/ez;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ey;->willNotDraw()Z

    move-result v1

    if-nez v1, :cond_98

    :try_start_53
    iget-object v1, p0, Lcom/google/android/gms/internal/ez;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ey;->bX()Lcom/google/android/gms/internal/l;

    move-result-object v1

    if-eqz v1, :cond_6b

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/l;->a(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/google/android/gms/internal/ez;->lL:Lcom/google/android/gms/internal/ey;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ey;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/l;->a(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    :try_end_6a
    .catch Lcom/google/android/gms/internal/m; {:try_start_53 .. :try_end_6a} :catch_7f

    move-result-object v0

    :cond_6b
    move-object v2, v0

    :goto_6c
    new-instance v0, Lcom/google/android/gms/internal/cf;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/cf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ez;->a(Lcom/google/android/gms/internal/cf;)V

    goto :goto_36

    :catch_7f
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to append parameter to URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_6c

    :cond_98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdWebView unable to handle URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V

    goto :goto_36
.end method
