.class final Lcom/bbm/ui/activities/aee;
.super Ljava/lang/Object;
.source "SelectCategoryActivity.java"

# interfaces
.implements Lcom/bbm/ui/activities/aek;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/aec;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/aec;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/aee;->a:Lcom/bbm/ui/activities/aec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)V
    .registers 6

    invoke-static {}, Lcom/bbm/ui/activities/SelectCategoryActivity;->a()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/aee;->a:Lcom/bbm/ui/activities/aec;

    iget-object v1, v1, Lcom/bbm/ui/activities/aec;->a:Lcom/bbm/ui/activities/SelectCategoryActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/SelectCategoryActivity;->b(Lcom/bbm/ui/activities/SelectCategoryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lcom/bbm/d/z;->a(Ljava/util/List;J)Lcom/bbm/d/cv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/aee;->a:Lcom/bbm/ui/activities/aec;

    iget-object v0, v0, Lcom/bbm/ui/activities/aec;->a:Lcom/bbm/ui/activities/SelectCategoryActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/SelectCategoryActivity;->finish()V

    return-void
.end method
