.class Lcom/google/android/gms/tagmanager/db;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/gms/tagmanager/bs;


# instance fields
.field private final b:Lcom/google/android/gms/tagmanager/cv;

.field private final c:Lcom/google/android/gms/tagmanager/w;

.field private final d:Ljava/util/Map;

.field private final e:Ljava/util/Map;

.field private final f:Ljava/util/Map;

.field private final g:Lcom/google/android/gms/tagmanager/eh;

.field private final h:Lcom/google/android/gms/tagmanager/eh;

.field private final i:Ljava/util/Set;

.field private final j:Lcom/google/android/gms/tagmanager/h;

.field private final k:Ljava/util/Map;

.field private volatile l:Ljava/lang/String;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/tagmanager/bs;

    invoke-static {}, Lcom/google/android/gms/tagmanager/dw;->g()Lcom/google/android/gms/internal/dz;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/bs;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/tagmanager/db;->a:Lcom/google/android/gms/tagmanager/bs;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/cv;Lcom/google/android/gms/tagmanager/h;Lcom/google/android/gms/tagmanager/ez;Lcom/google/android/gms/tagmanager/ez;Lcom/google/android/gms/tagmanager/w;)V
    .registers 15

    const/high16 v2, 0x10

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_10

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "resource cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/db;->b:Lcom/google/android/gms/tagmanager/cv;

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/google/android/gms/tagmanager/cv;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/db;->i:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/db;->j:Lcom/google/android/gms/tagmanager/h;

    iput-object p6, p0, Lcom/google/android/gms/tagmanager/db;->c:Lcom/google/android/gms/tagmanager/w;

    new-instance v0, Lcom/google/android/gms/tagmanager/db$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/db$1;-><init>(Lcom/google/android/gms/tagmanager/db;)V

    new-instance v1, Lcom/google/android/gms/tagmanager/ei;

    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/ei;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/tagmanager/ei;->a(ILcom/google/android/gms/tagmanager/ej;)Lcom/google/android/gms/tagmanager/eh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/db;->g:Lcom/google/android/gms/tagmanager/eh;

    new-instance v0, Lcom/google/android/gms/tagmanager/db$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/db$2;-><init>(Lcom/google/android/gms/tagmanager/db;)V

    new-instance v1, Lcom/google/android/gms/tagmanager/ei;

    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/ei;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/tagmanager/ei;->a(ILcom/google/android/gms/tagmanager/ej;)Lcom/google/android/gms/tagmanager/eh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/db;->h:Lcom/google/android/gms/tagmanager/eh;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/db;->d:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/tagmanager/ee;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/ee;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->b(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ey;

    invoke-direct {v0, p5}, Lcom/google/android/gms/tagmanager/ey;-><init>(Lcom/google/android/gms/tagmanager/ez;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->b(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ff;

    invoke-direct {v0, p3}, Lcom/google/android/gms/tagmanager/ff;-><init>(Lcom/google/android/gms/tagmanager/h;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->b(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/dx;

    invoke-direct {v0, p1, p3}, Lcom/google/android/gms/tagmanager/dx;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/h;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->b(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/db;->e:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/tagmanager/ew;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/ew;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->c(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/t;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/t;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->c(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/u;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/u;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->c(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ab;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/ab;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->c(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ac;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/ac;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->c(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/av;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/av;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->c(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/aw;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/aw;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->c(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ch;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/ch;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->c(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/dp;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/dp;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->c(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/db;->f:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/tagmanager/ar;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/ar;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/bu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/bu;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ea;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/ea;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/eb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/eb;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ec;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/ec;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ed;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/ed;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ek;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/ek;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ev;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/db;->b:Lcom/google/android/gms/tagmanager/cv;

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/cv;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/tagmanager/ev;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ey;

    invoke-direct {v0, p4}, Lcom/google/android/gms/tagmanager/ey;-><init>(Lcom/google/android/gms/tagmanager/ez;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/fb;

    invoke-direct {v0, p3}, Lcom/google/android/gms/tagmanager/fb;-><init>(Lcom/google/android/gms/tagmanager/h;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/fi;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/fi;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/q;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/q;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/s;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/s;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/x;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/x;-><init>(Lcom/google/android/gms/tagmanager/db;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ad;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/ad;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ae;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/ae;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/an;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/an;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ap;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/ap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/au;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/au;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/bd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/bd;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/bt;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/bt;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ca;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/ca;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ce;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/ce;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/cg;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/cg;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/ci;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/ci;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/df;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/df;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/dg;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/dg;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/dr;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/dr;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/z;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/db;->k:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/db;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1b1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_287

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/cx;

    invoke-interface {p6}, Lcom/google/android/gms/tagmanager/w;->a()Z

    move-result v1

    if-eqz v1, :cond_1f7

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cx;->f()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cx;->g()Ljava/util/List;

    move-result-object v2

    const-string v3, "add macro"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/tagmanager/db;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cx;->k()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cx;->h()Ljava/util/List;

    move-result-object v2

    const-string v3, "remove macro"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/tagmanager/db;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cx;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cx;->i()Ljava/util/List;

    move-result-object v2

    const-string v3, "add tag"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/tagmanager/db;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cx;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cx;->j()Ljava/util/List;

    move-result-object v2

    const-string v3, "remove tag"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/tagmanager/db;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    :cond_1f7
    move v3, v4

    :goto_1f8
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cx;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_23f

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cx;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tagmanager/ct;

    const-string v2, "Unknown"

    invoke-interface {p6}, Lcom/google/android/gms/tagmanager/w;->a()Z

    move-result v6

    if-eqz v6, :cond_228

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cx;->g()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_228

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cx;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_228
    iget-object v6, p0, Lcom/google/android/gms/tagmanager/db;->k:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/ct;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/gms/tagmanager/db;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tagmanager/de;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/tagmanager/de;->a(Lcom/google/android/gms/tagmanager/cx;)V

    invoke-virtual {v6, v0, v1}, Lcom/google/android/gms/tagmanager/de;->a(Lcom/google/android/gms/tagmanager/cx;Lcom/google/android/gms/tagmanager/ct;)V

    invoke-virtual {v6, v0, v2}, Lcom/google/android/gms/tagmanager/de;->a(Lcom/google/android/gms/tagmanager/cx;Ljava/lang/String;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1f8

    :cond_23f
    move v3, v4

    :goto_240
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cx;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1b1

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cx;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tagmanager/ct;

    const-string v2, "Unknown"

    invoke-interface {p6}, Lcom/google/android/gms/tagmanager/w;->a()Z

    move-result v6

    if-eqz v6, :cond_270

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cx;->h()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_270

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cx;->h()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_270
    iget-object v6, p0, Lcom/google/android/gms/tagmanager/db;->k:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/ct;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/gms/tagmanager/db;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tagmanager/de;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/tagmanager/de;->a(Lcom/google/android/gms/tagmanager/cx;)V

    invoke-virtual {v6, v0, v1}, Lcom/google/android/gms/tagmanager/de;->b(Lcom/google/android/gms/tagmanager/cx;Lcom/google/android/gms/tagmanager/ct;)V

    invoke-virtual {v6, v0, v2}, Lcom/google/android/gms/tagmanager/de;->b(Lcom/google/android/gms/tagmanager/cx;Ljava/lang/String;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_240

    :cond_287
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/db;->b:Lcom/google/android/gms/tagmanager/cv;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cv;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_295
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2ab
    :goto_2ab
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_295

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tagmanager/ct;

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/ct;->b()Ljava/util/Map;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/ak;->bm:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/dz;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/dw;->e(Lcom/google/android/gms/internal/dz;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2ab

    iget-object v5, p0, Lcom/google/android/gms/tagmanager/db;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/google/android/gms/tagmanager/db;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tagmanager/de;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/tagmanager/de;->a(Lcom/google/android/gms/tagmanager/ct;)V

    goto :goto_2ab

    :cond_2e1
    return-void
.end method

.method private a(Lcom/google/android/gms/internal/dz;Ljava/util/Set;Lcom/google/android/gms/tagmanager/dy;)Lcom/google/android/gms/tagmanager/bs;
    .registers 10

    const/4 v2, 0x0

    iget-boolean v0, p1, Lcom/google/android/gms/internal/dz;->l:Z

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/android/gms/tagmanager/bs;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/tagmanager/bs;-><init>(Ljava/lang/Object;Z)V

    :goto_b
    return-object v0

    :cond_c
    iget v0, p1, Lcom/google/android/gms/internal/dz;->a:I

    packed-switch v0, :pswitch_data_17a

    :pswitch_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/google/android/gms/internal/dz;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/tagmanager/db;->a:Lcom/google/android/gms/tagmanager/bs;

    goto :goto_b

    :pswitch_2c
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/cs;->a(Lcom/google/android/gms/internal/dz;)Lcom/google/android/gms/internal/dz;

    move-result-object v3

    iget-object v0, p1, Lcom/google/android/gms/internal/dz;->c:[Lcom/google/android/gms/internal/dz;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/gms/internal/dz;

    iput-object v0, v3, Lcom/google/android/gms/internal/dz;->c:[Lcom/google/android/gms/internal/dz;

    move v1, v2

    :goto_38
    iget-object v0, p1, Lcom/google/android/gms/internal/dz;->c:[Lcom/google/android/gms/internal/dz;

    array-length v0, v0

    if-ge v1, v0, :cond_5e

    iget-object v0, p1, Lcom/google/android/gms/internal/dz;->c:[Lcom/google/android/gms/internal/dz;

    aget-object v0, v0, v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/tagmanager/dy;->a(I)Lcom/google/android/gms/tagmanager/dy;

    move-result-object v4

    invoke-direct {p0, v0, p2, v4}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/internal/dz;Ljava/util/Set;Lcom/google/android/gms/tagmanager/dy;)Lcom/google/android/gms/tagmanager/bs;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/tagmanager/db;->a:Lcom/google/android/gms/tagmanager/bs;

    if-ne v0, v4, :cond_50

    sget-object v0, Lcom/google/android/gms/tagmanager/db;->a:Lcom/google/android/gms/tagmanager/bs;

    goto :goto_b

    :cond_50
    iget-object v4, v3, Lcom/google/android/gms/internal/dz;->c:[Lcom/google/android/gms/internal/dz;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/bs;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_38

    :cond_5e
    new-instance v0, Lcom/google/android/gms/tagmanager/bs;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/tagmanager/bs;-><init>(Ljava/lang/Object;Z)V

    goto :goto_b

    :pswitch_64
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/cs;->a(Lcom/google/android/gms/internal/dz;)Lcom/google/android/gms/internal/dz;

    move-result-object v3

    iget-object v0, p1, Lcom/google/android/gms/internal/dz;->d:[Lcom/google/android/gms/internal/dz;

    array-length v0, v0

    iget-object v1, p1, Lcom/google/android/gms/internal/dz;->e:[Lcom/google/android/gms/internal/dz;

    array-length v1, v1

    if-eq v0, v1, :cond_8e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid serving value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/dz;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/tagmanager/db;->a:Lcom/google/android/gms/tagmanager/bs;

    goto/16 :goto_b

    :cond_8e
    iget-object v0, p1, Lcom/google/android/gms/internal/dz;->d:[Lcom/google/android/gms/internal/dz;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/gms/internal/dz;

    iput-object v0, v3, Lcom/google/android/gms/internal/dz;->d:[Lcom/google/android/gms/internal/dz;

    iget-object v0, p1, Lcom/google/android/gms/internal/dz;->d:[Lcom/google/android/gms/internal/dz;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/gms/internal/dz;

    iput-object v0, v3, Lcom/google/android/gms/internal/dz;->e:[Lcom/google/android/gms/internal/dz;

    move v1, v2

    :goto_9d
    iget-object v0, p1, Lcom/google/android/gms/internal/dz;->d:[Lcom/google/android/gms/internal/dz;

    array-length v0, v0

    if-ge v1, v0, :cond_de

    iget-object v0, p1, Lcom/google/android/gms/internal/dz;->d:[Lcom/google/android/gms/internal/dz;

    aget-object v0, v0, v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/tagmanager/dy;->b(I)Lcom/google/android/gms/tagmanager/dy;

    move-result-object v4

    invoke-direct {p0, v0, p2, v4}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/internal/dz;Ljava/util/Set;Lcom/google/android/gms/tagmanager/dy;)Lcom/google/android/gms/tagmanager/bs;

    move-result-object v0

    iget-object v4, p1, Lcom/google/android/gms/internal/dz;->e:[Lcom/google/android/gms/internal/dz;

    aget-object v4, v4, v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/tagmanager/dy;->c(I)Lcom/google/android/gms/tagmanager/dy;

    move-result-object v5

    invoke-direct {p0, v4, p2, v5}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/internal/dz;Ljava/util/Set;Lcom/google/android/gms/tagmanager/dy;)Lcom/google/android/gms/tagmanager/bs;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/tagmanager/db;->a:Lcom/google/android/gms/tagmanager/bs;

    if-eq v0, v5, :cond_c2

    sget-object v5, Lcom/google/android/gms/tagmanager/db;->a:Lcom/google/android/gms/tagmanager/bs;

    if-ne v4, v5, :cond_c6

    :cond_c2
    sget-object v0, Lcom/google/android/gms/tagmanager/db;->a:Lcom/google/android/gms/tagmanager/bs;

    goto/16 :goto_b

    :cond_c6
    iget-object v5, v3, Lcom/google/android/gms/internal/dz;->d:[Lcom/google/android/gms/internal/dz;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/bs;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    aput-object v0, v5, v1

    iget-object v5, v3, Lcom/google/android/gms/internal/dz;->e:[Lcom/google/android/gms/internal/dz;

    invoke-virtual {v4}, Lcom/google/android/gms/tagmanager/bs;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    aput-object v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9d

    :cond_de
    new-instance v0, Lcom/google/android/gms/tagmanager/bs;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/tagmanager/bs;-><init>(Ljava/lang/Object;Z)V

    goto/16 :goto_b

    :pswitch_e5
    iget-object v0, p1, Lcom/google/android/gms/internal/dz;->f:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_123

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Macro cycle detected.  Current macro reference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/dz;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  Previous macro references: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/tagmanager/db;->a:Lcom/google/android/gms/tagmanager/bs;

    goto/16 :goto_b

    :cond_123
    iget-object v0, p1, Lcom/google/android/gms/internal/dz;->f:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/google/android/gms/internal/dz;->f:Ljava/lang/String;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/dy;->a()Lcom/google/android/gms/tagmanager/bc;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/google/android/gms/tagmanager/db;->a(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/gms/tagmanager/bc;)Lcom/google/android/gms/tagmanager/bs;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/dz;->k:[I

    invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/dz;->a(Lcom/google/android/gms/tagmanager/bs;[I)Lcom/google/android/gms/tagmanager/bs;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/dz;->f:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :pswitch_13f
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/cs;->a(Lcom/google/android/gms/internal/dz;)Lcom/google/android/gms/internal/dz;

    move-result-object v3

    iget-object v0, p1, Lcom/google/android/gms/internal/dz;->j:[Lcom/google/android/gms/internal/dz;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/gms/internal/dz;

    iput-object v0, v3, Lcom/google/android/gms/internal/dz;->j:[Lcom/google/android/gms/internal/dz;

    move v1, v2

    :goto_14b
    iget-object v0, p1, Lcom/google/android/gms/internal/dz;->j:[Lcom/google/android/gms/internal/dz;

    array-length v0, v0

    if-ge v1, v0, :cond_172

    iget-object v0, p1, Lcom/google/android/gms/internal/dz;->j:[Lcom/google/android/gms/internal/dz;

    aget-object v0, v0, v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/tagmanager/dy;->d(I)Lcom/google/android/gms/tagmanager/dy;

    move-result-object v4

    invoke-direct {p0, v0, p2, v4}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/internal/dz;Ljava/util/Set;Lcom/google/android/gms/tagmanager/dy;)Lcom/google/android/gms/tagmanager/bs;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/tagmanager/db;->a:Lcom/google/android/gms/tagmanager/bs;

    if-ne v0, v4, :cond_164

    sget-object v0, Lcom/google/android/gms/tagmanager/db;->a:Lcom/google/android/gms/tagmanager/bs;

    goto/16 :goto_b

    :cond_164
    iget-object v4, v3, Lcom/google/android/gms/internal/dz;->j:[Lcom/google/android/gms/internal/dz;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/bs;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14b

    :cond_172
    new-instance v0, Lcom/google/android/gms/tagmanager/bs;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/tagmanager/bs;-><init>(Ljava/lang/Object;Z)V

    goto/16 :goto_b

    nop

    :pswitch_data_17a
    .packed-switch 0x2
        :pswitch_2c
        :pswitch_64
        :pswitch_e5
        :pswitch_11
        :pswitch_11
        :pswitch_13f
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/gms/tagmanager/bc;)Lcom/google/android/gms/tagmanager/bs;
    .registers 15

    const/4 v10, 0x1

    iget v0, p0, Lcom/google/android/gms/tagmanager/db;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/tagmanager/db;->m:I

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/db;->h:Lcom/google/android/gms/tagmanager/eh;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/eh;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/dd;

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/db;->c:Lcom/google/android/gms/tagmanager/w;

    invoke-interface {v1}, Lcom/google/android/gms/tagmanager/w;->a()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/dd;->b()Lcom/google/android/gms/internal/dz;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/internal/dz;Ljava/util/Set;)V

    iget v1, p0, Lcom/google/android/gms/tagmanager/db;->m:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/tagmanager/db;->m:I

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/dd;->a()Lcom/google/android/gms/tagmanager/bs;

    move-result-object v0

    :goto_2a
    return-object v0

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/db;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/gms/tagmanager/de;

    if-nez v9, :cond_5d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/db;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Invalid macro: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/tagmanager/db;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/tagmanager/db;->m:I

    sget-object v0, Lcom/google/android/gms/tagmanager/db;->a:Lcom/google/android/gms/tagmanager/bs;

    goto :goto_2a

    :cond_5d
    invoke-virtual {v9}, Lcom/google/android/gms/tagmanager/de;->a()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/android/gms/tagmanager/de;->b()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v9}, Lcom/google/android/gms/tagmanager/de;->c()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v9}, Lcom/google/android/gms/tagmanager/de;->e()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v9}, Lcom/google/android/gms/tagmanager/de;->d()Ljava/util/Map;

    move-result-object v6

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/bc;->b()Lcom/google/android/gms/tagmanager/da;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/tagmanager/db;->a(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/android/gms/tagmanager/da;)Lcom/google/android/gms/tagmanager/bs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/bs;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-virtual {v9}, Lcom/google/android/gms/tagmanager/de;->f()Lcom/google/android/gms/tagmanager/ct;

    move-result-object v0

    move-object v2, v0

    :goto_8d
    if-nez v2, :cond_d4

    iget v0, p0, Lcom/google/android/gms/tagmanager/db;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/tagmanager/db;->m:I

    sget-object v0, Lcom/google/android/gms/tagmanager/db;->a:Lcom/google/android/gms/tagmanager/bs;

    goto :goto_2a

    :cond_98
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/bs;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v10, :cond_c2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/db;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Multiple macros active for macroName "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->b(Ljava/lang/String;)V

    :cond_c2
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/bs;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/ct;

    move-object v2, v0

    goto :goto_8d

    :cond_d4
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/db;->f:Ljava/util/Map;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/bc;->a()Lcom/google/android/gms/tagmanager/cj;

    move-result-object v3

    invoke-direct {p0, v0, v2, p2, v3}, Lcom/google/android/gms/tagmanager/db;->a(Ljava/util/Map;Lcom/google/android/gms/tagmanager/ct;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cj;)Lcom/google/android/gms/tagmanager/bs;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/bs;->b()Z

    move-result v0

    if-eqz v0, :cond_110

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/bs;->b()Z

    move-result v0

    if-eqz v0, :cond_110

    move v0, v10

    :goto_eb
    sget-object v1, Lcom/google/android/gms/tagmanager/db;->a:Lcom/google/android/gms/tagmanager/bs;

    if-ne v3, v1, :cond_112

    sget-object v0, Lcom/google/android/gms/tagmanager/db;->a:Lcom/google/android/gms/tagmanager/bs;

    :goto_f1
    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/ct;->c()Lcom/google/android/gms/internal/dz;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/bs;->b()Z

    move-result v2

    if-eqz v2, :cond_105

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/db;->h:Lcom/google/android/gms/tagmanager/eh;

    new-instance v3, Lcom/google/android/gms/tagmanager/dd;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/tagmanager/dd;-><init>(Lcom/google/android/gms/tagmanager/bs;Lcom/google/android/gms/internal/dz;)V

    invoke-interface {v2, p1, v3}, Lcom/google/android/gms/tagmanager/eh;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_105
    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/internal/dz;Ljava/util/Set;)V

    iget v1, p0, Lcom/google/android/gms/tagmanager/db;->m:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/tagmanager/db;->m:I

    goto/16 :goto_2a

    :cond_110
    const/4 v0, 0x0

    goto :goto_eb

    :cond_112
    new-instance v1, Lcom/google/android/gms/tagmanager/bs;

    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/bs;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/google/android/gms/tagmanager/bs;-><init>(Ljava/lang/Object;Z)V

    move-object v0, v1

    goto :goto_f1
.end method

.method private a(Ljava/util/Map;Lcom/google/android/gms/tagmanager/ct;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cj;)Lcom/google/android/gms/tagmanager/bs;
    .registers 16

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/tagmanager/ct;->b()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ak;->aC:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    if-nez v0, :cond_1c

    const-string v0, "No function id in properties"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/tagmanager/db;->a:Lcom/google/android/gms/tagmanager/bs;

    :cond_1b
    :goto_1b
    return-object v1

    :cond_1c
    iget-object v7, v0, Lcom/google/android/gms/internal/dz;->g:Ljava/lang/String;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/z;

    if-nez v0, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has no backing implementation."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/tagmanager/db;->a:Lcom/google/android/gms/tagmanager/bs;

    goto :goto_1b

    :cond_3f
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/db;->g:Lcom/google/android/gms/tagmanager/eh;

    invoke-interface {v1, p2}, Lcom/google/android/gms/tagmanager/eh;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tagmanager/bs;

    if-eqz v1, :cond_51

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/db;->c:Lcom/google/android/gms/tagmanager/w;

    invoke-interface {v2}, Lcom/google/android/gms/tagmanager/w;->a()Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_51
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/tagmanager/ct;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v4, v5

    :goto_63
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p4, v2}, Lcom/google/android/gms/tagmanager/cj;->a(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/cl;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/dz;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/dz;

    invoke-interface {v10, v3}, Lcom/google/android/gms/tagmanager/cl;->a(Lcom/google/android/gms/internal/dz;)Lcom/google/android/gms/tagmanager/dy;

    move-result-object v3

    invoke-direct {p0, v2, p3, v3}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/internal/dz;Ljava/util/Set;Lcom/google/android/gms/tagmanager/dy;)Lcom/google/android/gms/tagmanager/bs;

    move-result-object v10

    sget-object v2, Lcom/google/android/gms/tagmanager/db;->a:Lcom/google/android/gms/tagmanager/bs;

    if-ne v10, v2, :cond_94

    sget-object v1, Lcom/google/android/gms/tagmanager/db;->a:Lcom/google/android/gms/tagmanager/bs;

    goto :goto_1b

    :cond_94
    invoke-virtual {v10}, Lcom/google/android/gms/tagmanager/bs;->b()Z

    move-result v2

    if-eqz v2, :cond_b7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v10}, Lcom/google/android/gms/tagmanager/bs;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/dz;

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/tagmanager/ct;->a(Ljava/lang/String;Lcom/google/android/gms/internal/dz;)V

    move v2, v4

    :goto_aa
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10}, Lcom/google/android/gms/tagmanager/bs;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v2

    goto :goto_63

    :cond_b7
    move v2, v6

    goto :goto_aa

    :cond_b9
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/z;->a(Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_f9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect keys for function "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " required "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/z;->c()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " had "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/tagmanager/db;->a:Lcom/google/android/gms/tagmanager/bs;

    goto/16 :goto_1b

    :cond_f9
    if-eqz v4, :cond_11c

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/z;->a()Z

    move-result v1

    if-eqz v1, :cond_11c

    :goto_101
    new-instance v1, Lcom/google/android/gms/tagmanager/bs;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/tagmanager/z;->a(Ljava/util/Map;)Lcom/google/android/gms/internal/dz;

    move-result-object v0

    invoke-direct {v1, v0, v5}, Lcom/google/android/gms/tagmanager/bs;-><init>(Ljava/lang/Object;Z)V

    if-eqz v5, :cond_111

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/db;->g:Lcom/google/android/gms/tagmanager/eh;

    invoke-interface {v0, p2, v1}, Lcom/google/android/gms/tagmanager/eh;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_111
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/bs;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    invoke-interface {p4, v0}, Lcom/google/android/gms/tagmanager/cj;->a(Lcom/google/android/gms/internal/dz;)V

    goto/16 :goto_1b

    :cond_11c
    move v5, v6

    goto :goto_101
.end method

.method private a(Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/dc;Lcom/google/android/gms/tagmanager/da;)Lcom/google/android/gms/tagmanager/bs;
    .registers 14

    const/4 v3, 0x1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/cx;

    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/da;->a()Lcom/google/android/gms/tagmanager/cm;

    move-result-object v7

    invoke-virtual {p0, v0, p2, v7}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/cx;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cm;)Lcom/google/android/gms/tagmanager/bs;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/tagmanager/bs;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p3, v0, v4, v5, v7}, Lcom/google/android/gms/tagmanager/dc;->a(Lcom/google/android/gms/tagmanager/cx;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cm;)V

    :cond_33
    if-eqz v2, :cond_3e

    invoke-virtual {v8}, Lcom/google/android/gms/tagmanager/bs;->b()Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v3

    :goto_3c
    move v2, v0

    goto :goto_10

    :cond_3e
    const/4 v0, 0x0

    goto :goto_3c

    :cond_40
    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {p4, v4}, Lcom/google/android/gms/tagmanager/da;->a(Ljava/util/Set;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/bs;

    invoke-direct {v0, v4, v2}, Lcom/google/android/gms/tagmanager/bs;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Lcom/google/android/gms/tagmanager/de;
    .registers 3

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/de;

    if-nez v0, :cond_10

    new-instance v0, Lcom/google/android/gms/tagmanager/de;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/de;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object v0
.end method

.method private static a(Lcom/google/android/gms/tagmanager/ct;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/ct;->b()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ak;->aN:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->a(Lcom/google/android/gms/internal/dz;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/gms/internal/dz;Ljava/util/Set;)V
    .registers 6

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance v0, Lcom/google/android/gms/tagmanager/bq;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/bq;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/internal/dz;Ljava/util/Set;Lcom/google/android/gms/tagmanager/dy;)Lcom/google/android/gms/tagmanager/bs;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/db;->a:Lcom/google/android/gms/tagmanager/bs;

    if-eq v0, v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/bs;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->f(Lcom/google/android/gms/internal/dz;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_26

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/db;->j:Lcom/google/android/gms/tagmanager/h;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/h;->a(Ljava/util/Map;)V

    goto :goto_2

    :cond_26
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_4c

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_46

    check-cast v0, Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/db;->j:Lcom/google/android/gms/tagmanager/h;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/tagmanager/h;->a(Ljava/util/Map;)V

    goto :goto_30

    :cond_46
    const-string v0, "pushAfterEvaluate: value not a Map"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->b(Ljava/lang/String;)V

    goto :goto_30

    :cond_4c
    const-string v0, "pushAfterEvaluate: value not a Map or List"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->b(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 5

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid resource: imbalance of rule names of functions for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " operation. Using default rule name instead"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->c(Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method private static a(Ljava/util/Map;Lcom/google/android/gms/tagmanager/z;)V
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/z;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate function type name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/z;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/z;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/google/android/gms/tagmanager/db;->m:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8

    const-string v0, ""

    :goto_7
    return-object v0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/google/android/gms/tagmanager/db;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    :goto_17
    iget v2, p0, Lcom/google/android/gms/tagmanager/db;->m:I

    if-ge v0, v2, :cond_23

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_23
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method


# virtual methods
.method a(Lcom/google/android/gms/tagmanager/ct;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cj;)Lcom/google/android/gms/tagmanager/bs;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/db;->e:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/tagmanager/db;->a(Ljava/util/Map;Lcom/google/android/gms/tagmanager/ct;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cj;)Lcom/google/android/gms/tagmanager/bs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/bs;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->e(Lcom/google/android/gms/internal/dz;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/dz;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/google/android/gms/tagmanager/cj;->a(Lcom/google/android/gms/internal/dz;)V

    new-instance v2, Lcom/google/android/gms/tagmanager/bs;

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/bs;->b()Z

    move-result v1

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/tagmanager/bs;-><init>(Ljava/lang/Object;Z)V

    return-object v2
.end method

.method a(Lcom/google/android/gms/tagmanager/cx;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cm;)Lcom/google/android/gms/tagmanager/bs;
    .registers 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cx;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/ct;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/cm;->a()Lcom/google/android/gms/tagmanager/cj;

    move-result-object v5

    invoke-virtual {p0, v0, p2, v5}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/ct;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cj;)Lcom/google/android/gms/tagmanager/bs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/bs;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/dz;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/android/gms/tagmanager/cm;->a(Lcom/google/android/gms/internal/dz;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/bs;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/bs;->b()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/bs;-><init>(Ljava/lang/Object;Z)V

    :goto_43
    return-object v0

    :cond_44
    if-eqz v1, :cond_4f

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/bs;->b()Z

    move-result v0

    if-eqz v0, :cond_4f

    move v0, v2

    :goto_4d
    move v1, v0

    goto :goto_b

    :cond_4f
    move v0, v3

    goto :goto_4d

    :cond_51
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cx;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_59
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/ct;

    invoke-interface {p3}, Lcom/google/android/gms/tagmanager/cm;->b()Lcom/google/android/gms/tagmanager/cj;

    move-result-object v5

    invoke-virtual {p0, v0, p2, v5}, Lcom/google/android/gms/tagmanager/db;->a(Lcom/google/android/gms/tagmanager/ct;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cj;)Lcom/google/android/gms/tagmanager/bs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/bs;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_92

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/dz;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/android/gms/tagmanager/cm;->a(Lcom/google/android/gms/internal/dz;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/bs;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/bs;->b()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/bs;-><init>(Ljava/lang/Object;Z)V

    goto :goto_43

    :cond_92
    if-eqz v1, :cond_9c

    invoke-virtual {v5}, Lcom/google/android/gms/tagmanager/bs;->b()Z

    move-result v0

    if-eqz v0, :cond_9c

    move v1, v2

    goto :goto_59

    :cond_9c
    move v1, v3

    goto :goto_59

    :cond_9e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->f(Ljava/lang/Object;)Lcom/google/android/gms/internal/dz;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/android/gms/tagmanager/cm;->a(Lcom/google/android/gms/internal/dz;)V

    new-instance v0, Lcom/google/android/gms/tagmanager/bs;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/tagmanager/bs;-><init>(Ljava/lang/Object;Z)V

    goto :goto_43
.end method

.method a(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/android/gms/tagmanager/da;)Lcom/google/android/gms/tagmanager/bs;
    .registers 15

    new-instance v0, Lcom/google/android/gms/tagmanager/db$3;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/db$3;-><init>(Lcom/google/android/gms/tagmanager/db;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-direct {p0, p2, p7, v0, p8}, Lcom/google/android/gms/tagmanager/db;->a(Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/dc;Lcom/google/android/gms/tagmanager/da;)Lcom/google/android/gms/tagmanager/bs;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/Set;Lcom/google/android/gms/tagmanager/da;)Lcom/google/android/gms/tagmanager/bs;
    .registers 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lcom/google/android/gms/tagmanager/db$4;

    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/db$4;-><init>(Lcom/google/android/gms/tagmanager/db;)V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/gms/tagmanager/db;->a(Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/dc;Lcom/google/android/gms/tagmanager/da;)Lcom/google/android/gms/tagmanager/bs;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized a()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/db;->l:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/google/android/gms/tagmanager/z;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/db;->f:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/db;->a(Ljava/util/Map;Lcom/google/android/gms/tagmanager/z;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/db;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/db;->c:Lcom/google/android/gms/tagmanager/w;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/w;->b(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/v;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/tagmanager/v;->b()Lcom/google/android/gms/tagmanager/fa;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/db;->i:Ljava/util/Set;

    invoke-interface {v2}, Lcom/google/android/gms/tagmanager/fa;->b()Lcom/google/android/gms/tagmanager/da;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/tagmanager/db;->a(Ljava/util/Set;Lcom/google/android/gms/tagmanager/da;)Lcom/google/android/gms/tagmanager/bs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/bs;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/ct;

    iget-object v4, p0, Lcom/google/android/gms/tagmanager/db;->d:Ljava/util/Map;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Lcom/google/android/gms/tagmanager/fa;->a()Lcom/google/android/gms/tagmanager/cj;

    move-result-object v6

    invoke-direct {p0, v4, v0, v5, v6}, Lcom/google/android/gms/tagmanager/db;->a(Ljava/util/Map;Lcom/google/android/gms/tagmanager/ct;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cj;)Lcom/google/android/gms/tagmanager/bs;
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3d

    goto :goto_22

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_40
    :try_start_40
    invoke-interface {v1}, Lcom/google/android/gms/tagmanager/v;->c()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/db;->c(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_3d

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/co;

    iget-object v2, v0, Lcom/google/android/gms/internal/co;->a:Ljava/lang/String;

    if-eqz v2, :cond_1f

    iget-object v2, v0, Lcom/google/android/gms/internal/co;->a:Ljava/lang/String;

    const-string v3, "gaExperiment:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignored supplemental: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->e(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    goto :goto_5

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_39
    :try_start_39
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/db;->j:Lcom/google/android/gms/tagmanager/h;

    invoke-static {v2, v0}, Lcom/google/android/gms/tagmanager/y;->a(Lcom/google/android/gms/tagmanager/h;Lcom/google/android/gms/internal/co;)V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_36

    goto :goto_5

    :cond_3f
    monitor-exit p0

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/bs;
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/tagmanager/db;->m:I

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/db;->c:Lcom/google/android/gms/tagmanager/w;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/w;->a(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/v;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/v;->a()Lcom/google/android/gms/tagmanager/bc;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/tagmanager/db;->a(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/gms/tagmanager/bc;)Lcom/google/android/gms/tagmanager/bs;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/v;->c()V

    return-object v1
.end method

.method b(Lcom/google/android/gms/tagmanager/z;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/db;->d:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/db;->a(Ljava/util/Map;Lcom/google/android/gms/tagmanager/z;)V

    return-void
.end method

.method c(Lcom/google/android/gms/tagmanager/z;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/db;->e:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/android/gms/tagmanager/db;->a(Ljava/util/Map;Lcom/google/android/gms/tagmanager/z;)V

    return-void
.end method

.method declared-synchronized c(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/db;->l:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
