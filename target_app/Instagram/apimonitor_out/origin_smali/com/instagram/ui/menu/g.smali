.class public final Lcom/instagram/ui/menu/g;
.super Ljava/lang/Object;
.source "RadioGroupItem.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/ui/menu/h;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/RadioGroup$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Landroid/widget/RadioGroup$OnCheckedChangeListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/ui/menu/h;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/widget/RadioGroup$OnCheckedChangeListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/ui/menu/g;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/instagram/ui/menu/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/instagram/ui/menu/g;->c:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/ui/menu/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/ui/menu/g;->a:Ljava/util/List;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/ui/menu/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Landroid/widget/RadioGroup$OnCheckedChangeListener;
    .registers 2

    iget-object v0, p0, Lcom/instagram/ui/menu/g;->c:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-object v0
.end method
