import '../../../shared/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CriptoListItem extends StatefulHookConsumerWidget {
  final String coinName;
  final String coinInitials;
  final String coinPrice;
  final String coinValue;
  final String coinIcon;
  const CriptoListItem({
    Key? key,
    required this.coinName,
    required this.coinInitials,
    required this.coinPrice,
    required this.coinValue,
    required this.coinIcon,
  }) : super(key: key);

  @override
  ConsumerState<CriptoListItem> createState() => _RequierimentsState();
}

class _RequierimentsState extends ConsumerState<CriptoListItem> {
  @override
  Widget build(BuildContext context) {
    final statevisibility = ref.watch(visibilityProvider.state);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(widget.coinIcon),
              minRadius: 27,
              maxRadius: 27,
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.coinInitials,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  widget.coinName,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            statevisibility.state
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(widget.coinValue),
                      Row(
                        children: [
                          Text(
                            widget.coinPrice,
                            style: const TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(width: 7),
                        ],
                      )
                    ],
                  )
                : Column(
                    children: const [
                      TextHideInformation(
                        fontTextSize: 18,
                      ),
                      SizedBox(height: 4),
                      TextHideInformation(
                        fontTextSize: 15,
                      ),
                    ],
                  ),
            Column(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  onPressed: () {},
                  iconSize: 12,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class TextHideInformation extends StatelessWidget {
  const TextHideInformation({
    Key? key,
    required this.fontTextSize,
  }) : super(key: key);

  final double fontTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      '********',
      style: TextStyle(
        fontSize: fontTextSize,
        letterSpacing: 2,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
