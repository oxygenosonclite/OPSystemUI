.class Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothBatteryTileIcon;
.super Lcom/android/systemui/plugins/qs/QSTile$Icon;
.source "BluetoothTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BluetoothTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothBatteryTileIcon"
.end annotation


# instance fields
.field private mBatteryLevel:I

.field private mIconScale:F


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/BluetoothTile;IF)V
    .locals 0

    .line 636
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    .line 637
    iput p2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothBatteryTileIcon;->mBatteryLevel:I

    .line 638
    iput p3, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothBatteryTileIcon;->mIconScale:F

    return-void
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 644
    sget v0, Lcom/android/systemui/R$drawable;->ic_bluetooth_connected:I

    iget v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothBatteryTileIcon;->mBatteryLevel:I

    iget p0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothBatteryTileIcon;->mIconScale:F

    invoke-static {p1, v0, v1, p0}, Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;->createLayerDrawable(Landroid/content/Context;IIF)Lcom/android/settingslib/graph/BluetoothDeviceLayerDrawable;

    move-result-object p0

    return-object p0
.end method
