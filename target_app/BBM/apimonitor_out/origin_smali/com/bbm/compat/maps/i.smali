.class final Lcom/bbm/compat/maps/i;
.super Ljava/lang/Object;
.source "MapQuestMapView.java"

# interfaces
.implements Lcom/mapquest/android/maps/bi;


# instance fields
.field final synthetic a:Lcom/mapquest/android/maps/d;

.field final synthetic b:Lcom/bbm/compat/maps/MapQuestMapView;


# direct methods
.method constructor <init>(Lcom/bbm/compat/maps/MapQuestMapView;Lcom/mapquest/android/maps/d;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/compat/maps/i;->b:Lcom/bbm/compat/maps/MapQuestMapView;

    iput-object p2, p0, Lcom/bbm/compat/maps/i;->a:Lcom/mapquest/android/maps/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/compat/maps/i;->a:Lcom/mapquest/android/maps/d;

    iget v0, v0, Lcom/mapquest/android/maps/y;->b:I

    if-ltz v0, :cond_26

    iget-object v1, p0, Lcom/bbm/compat/maps/i;->a:Lcom/mapquest/android/maps/d;

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/d;->c(I)Lcom/mapquest/android/maps/bp;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/compat/maps/i;->b:Lcom/bbm/compat/maps/MapQuestMapView;

    invoke-static {v1}, Lcom/bbm/compat/maps/MapQuestMapView;->a(Lcom/bbm/compat/maps/MapQuestMapView;)Lcom/mapquest/android/maps/AnnotationView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/AnnotationView;->a(Lcom/mapquest/android/maps/bp;)V

    iget-object v1, p0, Lcom/bbm/compat/maps/i;->b:Lcom/bbm/compat/maps/MapQuestMapView;

    invoke-static {v1}, Lcom/bbm/compat/maps/MapQuestMapView;->b(Lcom/bbm/compat/maps/MapQuestMapView;)Lcom/bbm/compat/maps/e;

    move-result-object v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/bbm/compat/maps/i;->b:Lcom/bbm/compat/maps/MapQuestMapView;

    invoke-static {v1}, Lcom/bbm/compat/maps/MapQuestMapView;->b(Lcom/bbm/compat/maps/MapQuestMapView;)Lcom/bbm/compat/maps/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bbm/compat/maps/e;->onMarkerClick(Ljava/lang/Object;)Z

    :cond_26
    return-void
.end method
