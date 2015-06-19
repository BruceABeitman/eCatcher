.class final Lcom/bbm/compat/maps/h;
.super Ljava/lang/Object;
.source "MapQuestMapView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/compat/maps/MapQuestMapView;


# direct methods
.method constructor <init>(Lcom/bbm/compat/maps/MapQuestMapView;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/compat/maps/h;->a:Lcom/bbm/compat/maps/MapQuestMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    if-eqz p1, :cond_b

    instance-of v0, p1, Lcom/mapquest/android/maps/AnnotationView;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/mapquest/android/maps/AnnotationView;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/AnnotationView;->a()V

    :cond_b
    return-void
.end method
