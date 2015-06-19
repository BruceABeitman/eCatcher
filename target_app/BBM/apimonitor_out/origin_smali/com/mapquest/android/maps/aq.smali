.class final Lcom/mapquest/android/maps/aq;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mapquest/android/maps/MapView;


# direct methods
.method constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 2

    iput-object p1, p0, Lcom/mapquest/android/maps/aq;->a:Lcom/mapquest/android/maps/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/mapquest/android/maps/aq;->a:Lcom/mapquest/android/maps/MapView;

    invoke-static {v0}, Lcom/mapquest/android/maps/MapView;->a(Lcom/mapquest/android/maps/MapView;)Lcom/mapquest/android/maps/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/al;->a()Z

    return-void
.end method
