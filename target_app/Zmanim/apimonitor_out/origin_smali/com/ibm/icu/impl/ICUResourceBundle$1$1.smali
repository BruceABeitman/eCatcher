.class Lcom/ibm/icu/impl/ICUResourceBundle$1$1;
.super Ljava/lang/Object;
.source "ICUResourceBundle.java"

# interfaces
.implements Lcom/ibm/icu/impl/URLHandler$URLVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/impl/ICUResourceBundle$1;->run()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/ICUResourceBundle$1;

.field final synthetic val$lst:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundle$1;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundle$1$1;->this$0:Lcom/ibm/icu/impl/ICUResourceBundle$1;

    iput-object p2, p0, Lcom/ibm/icu/impl/ICUResourceBundle$1$1;->val$lst:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;)V
    .registers 6

    const-string v0, ".res"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "res_index.res"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$1$1;->val$lst:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    return-void
.end method
