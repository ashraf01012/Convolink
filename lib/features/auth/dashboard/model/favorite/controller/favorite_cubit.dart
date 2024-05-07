import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled/core/repo/database_repo.dart';
import 'package:untitled/features/auth/dashboard/model/product/controller/product_cubit.dart';
import 'package:untitled/features/auth/dashboard/model/product/model/entity_model/product_model.dart';

part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteStateLoading()) {
    emit;
  }
  List<ProductModel> products = [];

  DatabaseRepo repo = DatabaseRepo();

  Future<void> init() async {
    emit(FavoriteStateLoading());
    await repo.initDB();

    products = await repo.fetchFavoriteProducts();
    if (products.isEmpty) {
      emit(FavoriteStateEmpty());
    } else {
      emit(FavoriteStateLoaded());
    }
  }

  Future<void> addItemToFavorite(int id, int value) async {
    await repo.updateFavorite(value, id);
    await init();
    await ProductCubit.instance.init();
    emit(FavoriteStateLoaded());
  }

  void addItemToCart(int id) {
    repo.updateCart(1, id);
    emit(FavoriteStateLoaded());
  }
}
