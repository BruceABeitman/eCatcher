.class public final Lcom/bbm/ui/e/cf;
.super Ljava/lang/Object;
.source "TextHolder.java"


# static fields
.field public static final a:Landroid/graphics/drawable/Drawable;

.field public static final b:Landroid/graphics/drawable/Drawable;

.field public static final c:Landroid/graphics/drawable/Drawable;

.field public static final d:Landroid/graphics/drawable/Drawable;

.field public static final e:Landroid/graphics/drawable/Drawable;

.field public static final f:Landroid/graphics/drawable/Drawable;

.field public static final g:Landroid/graphics/drawable/Drawable;

.field public static final h:Landroid/graphics/drawable/Drawable;

.field public static final i:Landroid/graphics/drawable/Drawable;

.field public static final j:Landroid/graphics/drawable/Drawable;

.field public static final k:Landroid/graphics/drawable/Drawable;

.field private static final t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public final r:F

.field public final s:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/Alaska;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020233

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/bbm/ui/e/cf;->e:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/bbm/ui/e/cf;->d:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020228

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/bbm/ui/e/cf;->f:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020232

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/bbm/ui/e/cf;->h:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/bbm/ui/e/cf;->g:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020229

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/bbm/ui/e/cf;->j:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02022b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/bbm/ui/e/cf;->k:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02022f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/bbm/ui/e/cf;->i:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02022e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/bbm/ui/e/cf;->c:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020226

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/bbm/ui/e/cf;->a:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020227

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/e/cf;->b:Landroid/graphics/drawable/Drawable;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bbm/ui/e/cf;->t:Ljava/util/HashMap;

    const-string v1, "message_icon_unread"

    sget-object v2, Lcom/bbm/ui/e/cf;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bbm/ui/e/cf;->t:Ljava/util/HashMap;

    const-string v1, "message_icon_read"

    sget-object v2, Lcom/bbm/ui/e/cf;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bbm/ui/e/cf;->t:Ljava/util/HashMap;

    const-string v1, "message_icon_pending"

    sget-object v2, Lcom/bbm/ui/e/cf;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bbm/ui/e/cf;->t:Ljava/util/HashMap;

    const-string v1, "message_icon_sent"

    sget-object v2, Lcom/bbm/ui/e/cf;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bbm/ui/e/cf;->t:Ljava/util/HashMap;

    const-string v1, "message_icon_sending"

    sget-object v2, Lcom/bbm/ui/e/cf;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bbm/ui/e/cf;->t:Ljava/util/HashMap;

    const-string v1, "message_icon_delivered"

    sget-object v2, Lcom/bbm/ui/e/cf;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bbm/ui/e/cf;->t:Ljava/util/HashMap;

    const-string v1, "message_icon_fail"

    sget-object v2, Lcom/bbm/ui/e/cf;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bbm/ui/e/cf;->t:Ljava/util/HashMap;

    const-string v1, "message_icon_r"

    sget-object v2, Lcom/bbm/ui/e/cf;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bbm/ui/e/cf;->t:Ljava/util/HashMap;

    const-string v1, "message_icon_ping"

    sget-object v2, Lcom/bbm/ui/e/cf;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bbm/ui/e/cf;->t:Ljava/util/HashMap;

    const-string v1, "message_icon_broadcast_read"

    sget-object v2, Lcom/bbm/ui/e/cf;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bbm/ui/e/cf;->t:Ljava/util/HashMap;

    const-string v1, "message_icon_broadcast_unread"

    sget-object v2, Lcom/bbm/ui/e/cf;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/bbm/ui/e/cf;->n:I

    const v1, 0x7f09008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/bbm/ui/e/cf;->o:I

    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/bbm/ui/e/cf;->p:I

    const v1, 0x7f090149

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/bbm/ui/e/cf;->l:I

    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/bbm/ui/e/cf;->m:I

    const v1, 0x7f090157

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/bbm/ui/e/cf;->q:I

    const v1, 0x7f0b00f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const v2, 0x7f0b00ee

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v1, v2

    const v2, 0x7f0b00f6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/bbm/ui/e/cf;->r:F

    const v1, 0x7f0b00f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/bbm/ui/e/cf;->s:F

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 2

    sget-object v0, Lcom/bbm/ui/e/cf;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
